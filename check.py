import os
import re
import numpy as np

from sklearn.feature_extraction.text import CountVectorizer
from sklearn.feature_extraction.text import TfidfTransformer

import pickle

max_features = 50000

check_dir = "Data/check/"

def load_str(filepath):
    t = ""
    with open(filepath) as f:
        for line in f:
            line = line.strip('\r')
            line = line.strip('\n')
            t += line
    return t

def check_webshell(dir):
    all = 0
    all_php = 0
    all_asp = 0
    all_jsp = 0
    other = 0
    webshell = 0

    pickle_in1 = open('vocabulary_php.pickle', 'rb')
    vocabulary1 = pickle.load(pickle_in1)

    pickle_in2 = open('vocabulary_asp.pickle', 'rb')
    vocabulary2 = pickle.load(pickle_in2)

    pickle_in3 = open('vocabulary_jsp.pickle', 'rb')
    vocabulary3 = pickle.load(pickle_in3)

    CV1 = CountVectorizer(ngram_range = (2, 2), decode_error = 'ignore', max_features = max_features, token_pattern = r'\b\w+\b', min_df = 1, max_df = 1.0, vocabulary = vocabulary1)
    CV2 = CountVectorizer(ngram_range = (2, 2), decode_error = 'ignore', max_features = max_features, token_pattern = r'\b\w+\b', min_df = 1, max_df = 1.0, vocabulary = vocabulary2)
    CV3 = CountVectorizer(ngram_range = (2, 2), decode_error = 'ignore', max_features = max_features, token_pattern = r'\b\w+\b', min_df = 1, max_df = 1.0, vocabulary = vocabulary3)

    transformer = TfidfTransformer(smooth_idf = False)

    pickle_in_1 = open('GNB_php.pickle', 'rb')
    clf1 = pickle.load(pickle_in_1)

    pickle_in_2 = open('GNB_asp.pickle', 'rb')
    clf2 = pickle.load(pickle_in_2)

    pickle_in_3 = open('GNB_jsp.pickle', 'rb')
    clf3 = pickle.load(pickle_in_3)

    g = os.walk(dir)
    for path, d, filelist in g:
        for filename in filelist:
            fulpath=os.path.join(path, filename)
            all += 1
            if filename.endswith('.php'):
                all_php += 1
                t = load_str(fulpath)
                t_list=[]
                t_list.append(t)
                x = CV1.transform(t_list).toarray()
                x = transformer.fit_transform(x).toarray()
                y_pred = clf1.predict(x)
            elif filename.endswith('.asp'):
                all_asp += 1
                t = load_str(fulpath)
                t_list=[]
                t_list.append(t)
                x = CV2.transform(t_list).toarray()
                x = transformer.fit_transform(x).toarray()
                y_pred = clf2.predict(x)
            elif filename.endswith('.jsp'):
                all_jsp += 1
                t = load_str(fulpath)
                t_list=[]
                t_list.append(t)
                x = CV3.transform(t_list).toarray()
                x = transformer.fit_transform(x).toarray()
                y_pred = clf3.predict(x)
            else:
                other += 1

            if y_pred[0] == 1:
                print "%s may be a webshell file" % fulpath
                webshell += 1

    print "Scan %d files(%d php files, %d asp files, %d jsp files, %d other files),%d files is webshell" % (all, all_php, all_asp, all_jsp, other, webshell)

if __name__ == '__main__':

    check_webshell(check_dir)




