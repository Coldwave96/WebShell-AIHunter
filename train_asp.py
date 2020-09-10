import os

from sklearn.feature_extraction.text import CountVectorizer
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import GaussianNB
from sklearn import metrics
from sklearn.feature_extraction.text import TfidfTransformer

import pickle
import chardet

max_features = 50000

webshell_dir = "Data/WebShell/asp/"
normal_dir = "Data/normal/asp/"

white_count = 0
black_count = 0


def check_style(filepath):
    with open(filepath, mode='rb') as f:
        data = f.read()
        style = chardet.detect(data)['encoding']
        return style


def load_str(filepath):
    t = ""
    try:
        style = check_style(filepath)
        with open(filepath, encoding=style) as f:
            for line in f:
                line = line.strip('\r')
                line = line.strip('\n')
                t += line
    except UnicodeDecodeError:
        with open(filepath, mode='rb') as f:
            t = f.read()

    return t


def load_files(dir):
    files_list = []
    g = os.walk(dir)
    for path, d, filelist in g:
        for filename in filelist:
            if filename.endswith('.asp'):
                fulpath = os.path.join(path, filename)
                print ("Load %s" % fulpath)
                t = load_str(fulpath)
                files_list.append(t)
    return files_list


def get_feature_by_wordbag_tfidf():
    global max_features
    global white_count
    global black_count
    print ("max_features = %d" % max_features)

    webshell_files_list = load_files(webshell_dir)
    y1 = [1] * len(webshell_files_list)
    black_count = len(webshell_files_list)

    normal_files_list = load_files(normal_dir)
    y2 = [0] * len(normal_files_list)
    white_count = len(normal_files_list)

    x = webshell_files_list + normal_files_list
    y = y1 + y2

    CV = CountVectorizer(ngram_range = (2, 2), decode_error = 'ignore', max_features = max_features, token_pattern = r'\b\w+\b', min_df = 1, max_df = 1.0)
    x = CV.fit_transform(x).toarray()

    vocabulary = CV.vocabulary_
    with open('vocabulary_asp.pickle', 'wb') as f:
        pickle.dump(vocabulary, f)

    transformer = TfidfTransformer(smooth_idf = False)
    x_tfidf = transformer.fit_transform(x)
    x = x_tfidf.toarray()

    return x, y


def do_metrics(y_test, y_pred):
    print ("metrics.accuracy_score:")
    print (metrics.accuracy_score(y_test, y_pred))
    print ("metrics.confusion_matrix:")
    print (metrics.confusion_matrix(y_test, y_pred))
    print ("metrics.precision_score:")
    print (metrics.precision_score(y_test, y_pred))
    print ("metrics.recall_score:")
    print (metrics.recall_score(y_test, y_pred))


def do_GNB(x, y):
    x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.4, random_state=0)
    clf = GaussianNB()
    clf.fit(x_train, y_train)
    y_pred = clf.predict(x_test)

    with open('GNB_asp.pickle', 'wb') as f:
        pickle.dump(clf, f)

    do_metrics(y_test, y_pred)


if __name__ == '__main__':

    x, y = get_feature_by_wordbag_tfidf()
    print ("Load %d white files %d black files" % (white_count, black_count))

    do_GNB(x, y)
