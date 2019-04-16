<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Class Hierarchy</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
<ol class="bulletedList">
<li><a href="Organizational/OrganizationalList.jsp">Organizational</a>
<ol class="bulletedList">
<li><a href="Logo/LogoList.jsp">Logo</a>
<li><a href="Related/RelatedList.jsp">Related</a>
<li><a href="Title/TitleList.jsp">Title</a>
<li><a href="OrganizationName/OrganizationNameList.jsp">OrganizationName</a>
<ol class="bulletedList">
<li><a href="OrganizationUnitName/OrganizationUnitNameList.jsp">OrganizationUnitName</a>
</ol>
</ol>
<li><a href="Addressing/AddressingList.jsp">Addressing</a>
<ol class="bulletedList">
<li><a href="Address/AddressList.jsp">Address</a>
</ol>
<li><a href="Identification/IdentificationList.jsp">Identification</a>
<ol class="bulletedList">
<li><a href="Name/NameList.jsp">Name</a>
<li><a href="FormattedName/FormattedNameList.jsp">FormattedName</a>
<li><a href="Nickname/NicknameList.jsp">Nickname</a>
<li><a href="Photo/PhotoList.jsp">Photo</a>
</ol>
<li><a href="ObjectProperty/ObjectPropertyList.jsp">ObjectProperty</a>
<ol class="bulletedList">
<li><a href="InverseFunctionalProperty/InverseFunctionalPropertyList.jsp">InverseFunctionalProperty</a>
<li><a href="AsymmetricProperty/AsymmetricPropertyList.jsp">AsymmetricProperty</a>
<li><a href="TransitiveProperty/TransitivePropertyList.jsp">TransitiveProperty</a>
<li><a href="SymmetricProperty/SymmetricPropertyList.jsp">SymmetricProperty</a>
<li><a href="IrreflexiveProperty/IrreflexivePropertyList.jsp">IrreflexiveProperty</a>
<li><a href="ReflexiveProperty/ReflexivePropertyList.jsp">ReflexiveProperty</a>
</ol>
<li><a href="Communication/CommunicationList.jsp">Communication</a>
<ol class="bulletedList">
<li><a href="InstantMessage/InstantMessageList.jsp">InstantMessage</a>
<li><a href="Telephone/TelephoneList.jsp">Telephone</a>
<li><a href="Language/LanguageList.jsp">Language</a>
<li><a href="Email/EmailList.jsp">Email</a>
</ol>
<li><a href="Datatype/DatatypeList.jsp">Datatype</a>
<ol class="bulletedList">
<li><a href="DataRange/DataRangeList.jsp">DataRange</a>
</ol>
<li><a href="DocumentStatus/DocumentStatusList.jsp">DocumentStatus</a>
<li><a href="Concept/ConceptList.jsp">Concept</a>
<ol class="bulletedList">
<li><a href="DateTimeValuePrecision/DateTimeValuePrecisionList.jsp">DateTimeValuePrecision</a>
<li><a href="Credential/CredentialList.jsp">Credential</a>
<ol class="bulletedList">
<li><a href="License/LicenseList.jsp">License</a>
<li><a href="Certificate/CertificateList.jsp">Certificate</a>
</ol>
<li><a href="ARG_2000376/ARG_2000376List.jsp">ARG_2000376</a>
<li><a href="Award/AwardList.jsp">Award</a>
<li><a href="AcademicDegree/AcademicDegreeList.jsp">AcademicDegree</a>
<ol class="bulletedList">
<li><a href="ThesisDegree/ThesisDegreeList.jsp">ThesisDegree</a>
</ol>
</ol>
<li><a href="Code/CodeList.jsp">Code</a>
<ol class="bulletedList">
<li><a href="Type/TypeList.jsp">Type</a>
<ol class="bulletedList">
<li><a href="Work/WorkList.jsp">Work</a>
<li><a href="Home/HomeList.jsp">Home</a>
</ol>
<li><a href="RelatedType/RelatedTypeList.jsp">RelatedType</a>
<ol class="bulletedList">
<li><a href="Muse/MuseList.jsp">Muse</a>
<li><a href="Emergency/EmergencyList.jsp">Emergency</a>
<li><a href="Neighbor/NeighborList.jsp">Neighbor</a>
<li><a href="Sweetheart/SweetheartList.jsp">Sweetheart</a>
<li><a href="Met/MetList.jsp">Met</a>
<li><a href="Kin/KinList.jsp">Kin</a>
<li><a href="Child/ChildList.jsp">Child</a>
<li><a href="Colleague/ColleagueList.jsp">Colleague</a>
<li><a href="Coworker/CoworkerList.jsp">Coworker</a>
<li><a href="Crush/CrushList.jsp">Crush</a>
<li><a href="Agent/AgentList.jsp">Agent</a>
<li><a href="Sibling/SiblingList.jsp">Sibling</a>
<li><a href="Contact/ContactList.jsp">Contact</a>
<li><a href="Me/MeList.jsp">Me</a>
<li><a href="Friend/FriendList.jsp">Friend</a>
<li><a href="Date/DateList.jsp">Date</a>
<li><a href="Spouse/SpouseList.jsp">Spouse</a>
<li><a href="Coresident/CoresidentList.jsp">Coresident</a>
<li><a href="Parent/ParentList.jsp">Parent</a>
<li><a href="Acquaintance/AcquaintanceList.jsp">Acquaintance</a>
</ol>
<li><a href="TelephoneType/TelephoneTypeList.jsp">TelephoneType</a>
<ol class="bulletedList">
<li><a href="Pager/PagerList.jsp">Pager</a>
<li><a href="Cell/CellList.jsp">Cell</a>
<li><a href="Text/TextList.jsp">Text</a>
<li><a href="Voice/VoiceList.jsp">Voice</a>
<li><a href="Video/VideoList.jsp">Video</a>
<li><a href="TextPhone/TextPhoneList.jsp">TextPhone</a>
<li><a href="Fax/FaxList.jsp">Fax</a>
</ol>
<li><a href="Gender/GenderList.jsp">Gender</a>
<ol class="bulletedList">
<li><a href="Other/OtherList.jsp">Other</a>
<li><a href="Female/FemaleList.jsp">Female</a>
<li><a href="Male/MaleList.jsp">Male</a>
<li><a href="Unknown/UnknownList.jsp">Unknown</a>
<li><a href="None/NoneList.jsp">None</a>
</ol>
</ol>
<li><a href="Explanatory/ExplanatoryList.jsp">Explanatory</a>
<ol class="bulletedList">
<li><a href="URL/URLList.jsp">URL</a>
<ol class="bulletedList">
<li><a href="F1000Link/F1000LinkList.jsp">F1000Link</a>
</ol>
<li><a href="Sound/SoundList.jsp">Sound</a>
<li><a href="Category/CategoryList.jsp">Category</a>
<li><a href="Note/NoteList.jsp">Note</a>
</ol>
<li><a href="AnnotationProperty/AnnotationPropertyList.jsp">AnnotationProperty</a>
<li><a href="Geographical/GeographicalList.jsp">Geographical</a>
<ol class="bulletedList">
<li><a href="TimeZone/TimeZoneList.jsp">TimeZone</a>
<li><a href="Geo/GeoList.jsp">Geo</a>
</ol>
<li><a href="Class/ClassList.jsp">Class</a>
<ol class="bulletedList">
<li><a href="Restriction/RestrictionList.jsp">Restriction</a>
</ol>
<li><a href="Calendar/CalendarList.jsp">Calendar</a>
<ol class="bulletedList">
<li><a href="CalendarBusy/CalendarBusyList.jsp">CalendarBusy</a>
<li><a href="CalendarRequest/CalendarRequestList.jsp">CalendarRequest</a>
<li><a href="CalendarLink/CalendarLinkList.jsp">CalendarLink</a>
</ol>
<li><a href="BFO_0000001/BFO_0000001List.jsp">BFO_0000001</a>
<ol class="bulletedList">
<li><a href="BFO_0000002/BFO_0000002List.jsp">BFO_0000002</a>
<ol class="bulletedList">
<li><a href="BFO_0000004/BFO_0000004List.jsp">BFO_0000004</a>
<ol class="bulletedList">
<li><a href="Agent/AgentList.jsp">Agent</a>
<ol class="bulletedList">
<li><a href="Person/PersonList.jsp">Person</a>
<ol class="bulletedList">
<li><a href="FacultyMember/FacultyMemberList.jsp">FacultyMember</a>
<li><a href="Student/StudentList.jsp">Student</a>
<ol class="bulletedList">
<li><a href="UndergraduateStudent/UndergraduateStudentList.jsp">UndergraduateStudent</a>
<li><a href="GraduateStudent/GraduateStudentList.jsp">GraduateStudent</a>
</ol>
<li><a href="EmeritusLibrarian/EmeritusLibrarianList.jsp">EmeritusLibrarian</a>
<li><a href="Librarian/LibrarianList.jsp">Librarian</a>
<li><a href="NonAcademic/NonAcademicList.jsp">NonAcademic</a>
<li><a href="EmeritusFaculty/EmeritusFacultyList.jsp">EmeritusFaculty</a>
<ol class="bulletedList">
<li><a href="EmeritusProfessor/EmeritusProfessorList.jsp">EmeritusProfessor</a>
</ol>
<li><a href="NonFacultyAcademic/NonFacultyAcademicList.jsp">NonFacultyAcademic</a>
<ol class="bulletedList">
<li><a href="Postdoc/PostdocList.jsp">Postdoc</a>
</ol>
</ol>
<li><a href="Group/GroupList.jsp">Group</a>
<ol class="bulletedList">
<li><a href="Team/TeamList.jsp">Team</a>
<li><a href="Committee/CommitteeList.jsp">Committee</a>
</ol>
<li><a href="OBI_0000835/OBI_0000835List.jsp">OBI_0000835</a>
<li><a href="Organization/OrganizationList.jsp">Organization</a>
<ol class="bulletedList">
<li><a href="Consortium/ConsortiumList.jsp">Consortium</a>
<li><a href="Hospital/HospitalList.jsp">Hospital</a>
<li><a href="FundingOrganization/FundingOrganizationList.jsp">FundingOrganization</a>
<li><a href="Publisher/PublisherList.jsp">Publisher</a>
<li><a href="ERO_0000565/ERO_0000565List.jsp">ERO_0000565</a>
<li><a href="Library/LibraryList.jsp">Library</a>
<li><a href="Museum/MuseumList.jsp">Museum</a>
<li><a href="College/CollegeList.jsp">College</a>
<li><a href="Company/CompanyList.jsp">Company</a>
<ol class="bulletedList">
<li><a href="PrivateCompany/PrivateCompanyList.jsp">PrivateCompany</a>
</ol>
<li><a href="Institute/InstituteList.jsp">Institute</a>
<li><a href="Program/ProgramList.jsp">Program</a>
<li><a href="Foundation/FoundationList.jsp">Foundation</a>
<li><a href="ResearchOrganization/ResearchOrganizationList.jsp">ResearchOrganization</a>
<li><a href="University/UniversityList.jsp">University</a>
<li><a href="Laboratory/LaboratoryList.jsp">Laboratory</a>
<ol class="bulletedList">
<li><a href="ServiceProvidingLaboratory/ServiceProvidingLaboratoryList.jsp">ServiceProvidingLaboratory</a>
<ol class="bulletedList">
<li><a href="CoreLaboratory/CoreLaboratoryList.jsp">CoreLaboratory</a>
</ol>
</ol>
<li><a href="ExtensionUnit/ExtensionUnitList.jsp">ExtensionUnit</a>
<ol class="bulletedList">
<li><a href="Division/DivisionList.jsp">Division</a>
</ol>
<li><a href="Center/CenterList.jsp">Center</a>
<li><a href="GovernmentAgency/GovernmentAgencyList.jsp">GovernmentAgency</a>
<li><a href="Department/DepartmentList.jsp">Department</a>
<ol class="bulletedList">
<li><a href="AcademicDepartment/AcademicDepartmentList.jsp">AcademicDepartment</a>
</ol>
<li><a href="School/SchoolList.jsp">School</a>
<li><a href="Association/AssociationList.jsp">Association</a>
<li><a href="ClinicalOrganization/ClinicalOrganizationList.jsp">ClinicalOrganization</a>
<li><a href="StudentOrganization/StudentOrganizationList.jsp">StudentOrganization</a>
</ol>
</ol>
<li><a href="BFO_0000040/BFO_0000040List.jsp">BFO_0000040</a>
<ol class="bulletedList">
<li><a href="Equipment/EquipmentList.jsp">Equipment</a>
<li><a href="OBI_0100026/OBI_0100026List.jsp">OBI_0100026</a>
<li><a href="ERO_0000004/ERO_0000004List.jsp">ERO_0000004</a>
<li><a href="ERO_0000020/ERO_0000020List.jsp">ERO_0000020</a>
<li><a href="ERO_0000006/ERO_0000006List.jsp">ERO_0000006</a>
<li><a href="ERO_0000071/ERO_0000071List.jsp">ERO_0000071</a>
</ol>
<li><a href="BFO_0000141/BFO_0000141List.jsp">BFO_0000141</a>
<ol class="bulletedList">
<li><a href="BFO_0000006/BFO_0000006List.jsp">BFO_0000006</a>
<ol class="bulletedList">
<li><a href="Location/LocationList.jsp">Location</a>
<ol class="bulletedList">
<li><a href="GeographicLocation/GeographicLocationList.jsp">GeographicLocation</a>
<ol class="bulletedList">
<li><a href="GeographicRegion/GeographicRegionList.jsp">GeographicRegion</a>
<ol class="bulletedList">
<li><a href="Continent/ContinentList.jsp">Continent</a>
<li><a href="SubnationalRegion/SubnationalRegionList.jsp">SubnationalRegion</a>
<li><a href="Geographical_region/Geographical_regionList.jsp">Geographical_region</a>
<li><a href="GeopoliticalEntity/GeopoliticalEntityList.jsp">GeopoliticalEntity</a>
<ol class="bulletedList">
<li><a href="PopulatedPlace/PopulatedPlaceList.jsp">PopulatedPlace</a>
<li><a href="Territory/TerritoryList.jsp">Territory</a>
<ol class="bulletedList">
<li><a href="Other/OtherList.jsp">Other</a>
<li><a href="Self_governing/Self_governingList.jsp">Self_governing</a>
<li><a href="Disputed/DisputedList.jsp">Disputed</a>
<li><a href="Non_self_governing/Non_self_governingList.jsp">Non_self_governing</a>
</ol>
<li><a href="Country/CountryList.jsp">Country</a>
<li><a href="StateOrProvince/StateOrProvinceList.jsp">StateOrProvince</a>
<li><a href="County/CountyList.jsp">County</a>
</ol>
</ol>
<li><a href="Campus/CampusList.jsp">Campus</a>
</ol>
</ol>
</ol>
<li><a href="BFO_0000029/BFO_0000029List.jsp">BFO_0000029</a>
<ol class="bulletedList">
<li><a href="Facility/FacilityList.jsp">Facility</a>
<ol class="bulletedList">
<li><a href="Room/RoomList.jsp">Room</a>
<li><a href="Building/BuildingList.jsp">Building</a>
</ol>
</ol>
</ol>
</ol>
<li><a href="BFO_0000031/BFO_0000031List.jsp">BFO_0000031</a>
<ol class="bulletedList">
<li><a href="IAO_0000030/IAO_0000030List.jsp">IAO_0000030</a>
<ol class="bulletedList">
<li><a href="ERO_0001716/ERO_0001716List.jsp">ERO_0001716</a>
<ol class="bulletedList">
<li><a href="BibliographicInformationSource/BibliographicInformationSourceList.jsp">BibliographicInformationSource</a>
</ol>
<li><a href="Document/DocumentList.jsp">Document</a>
<ol class="bulletedList">
<li><a href="Thesis/ThesisList.jsp">Thesis</a>
<li><a href="Standard/StandardList.jsp">Standard</a>
<li><a href="Slideshow/SlideshowList.jsp">Slideshow</a>
<li><a href="Manual/ManualList.jsp">Manual</a>
<li><a href="AudioDocument/AudioDocumentList.jsp">AudioDocument</a>
<li><a href="Manuscript/ManuscriptList.jsp">Manuscript</a>
<li><a href="Comment/CommentList.jsp">Comment</a>
<li><a href="Abstract/AbstractList.jsp">Abstract</a>
<li><a href="AudioVisualDocument/AudioVisualDocumentList.jsp">AudioVisualDocument</a>
<ol class="bulletedList">
<li><a href="Video/VideoList.jsp">Video</a>
<li><a href="Film/FilmList.jsp">Film</a>
</ol>
<li><a href="DocumentPart/DocumentPartList.jsp">DocumentPart</a>
<ol class="bulletedList">
<li><a href="BookSection/BookSectionList.jsp">BookSection</a>
<ol class="bulletedList">
<li><a href="Chapter/ChapterList.jsp">Chapter</a>
</ol>
<li><a href="Slide/SlideList.jsp">Slide</a>
<li><a href="Excerpt/ExcerptList.jsp">Excerpt</a>
<ol class="bulletedList">
<li><a href="Quote/QuoteList.jsp">Quote</a>
</ol>
</ol>
<li><a href="ReferenceSource/ReferenceSourceList.jsp">ReferenceSource</a>
<li><a href="ClinicalGuideline/ClinicalGuidelineList.jsp">ClinicalGuideline</a>
<li><a href="Note/NoteList.jsp">Note</a>
<li><a href="WorkingPaper/WorkingPaperList.jsp">WorkingPaper</a>
<li><a href="Speech/SpeechList.jsp">Speech</a>
<li><a href="CollectedDocument/CollectedDocumentList.jsp">CollectedDocument</a>
<ol class="bulletedList">
<li><a href="Issue/IssueList.jsp">Issue</a>
<li><a href="EditedBook/EditedBookList.jsp">EditedBook</a>
<li><a href="Database/DatabaseList.jsp">Database</a>
</ol>
<li><a href="Catalog/CatalogList.jsp">Catalog</a>
<li><a href="NewsRelease/NewsReleaseList.jsp">NewsRelease</a>
<li><a href="Score/ScoreList.jsp">Score</a>
<li><a href="ConferencePoster/ConferencePosterList.jsp">ConferencePoster</a>
<li><a href="Article/ArticleList.jsp">Article</a>
<ol class="bulletedList">
<li><a href="Review/ReviewList.jsp">Review</a>
<li><a href="BlogPosting/BlogPostingList.jsp">BlogPosting</a>
<li><a href="EditorialArticle/EditorialArticleList.jsp">EditorialArticle</a>
<li><a href="AcademicArticle/AcademicArticleList.jsp">AcademicArticle</a>
<ol class="bulletedList">
<li><a href="IAO_0000013/IAO_0000013List.jsp">IAO_0000013</a>
</ol>
<li><a href="ConferencePaper/ConferencePaperList.jsp">ConferencePaper</a>
</ol>
<li><a href="OBI_0000272/OBI_0000272List.jsp">OBI_0000272</a>
<li><a href="CaseStudy/CaseStudyList.jsp">CaseStudy</a>
<li><a href="Webpage/WebpageList.jsp">Webpage</a>
<li><a href="Erratum/ErratumList.jsp">Erratum</a>
<li><a href="Image/ImageList.jsp">Image</a>
<ol class="bulletedList">
<li><a href="Map/MapList.jsp">Map</a>
</ol>
<li><a href="Translation/TranslationList.jsp">Translation</a>
<li><a href="Patent/PatentList.jsp">Patent</a>
<li><a href="ResearchProposal/ResearchProposalList.jsp">ResearchProposal</a>
<li><a href="Dataset/DatasetList.jsp">Dataset</a>
<li><a href="Book/BookList.jsp">Book</a>
<ol class="bulletedList">
<li><a href="Proceedings/ProceedingsList.jsp">Proceedings</a>
</ol>
<li><a href="PersonalCommunicationDocument/PersonalCommunicationDocumentList.jsp">PersonalCommunicationDocument</a>
<ol class="bulletedList">
<li><a href="Letter/LetterList.jsp">Letter</a>
</ol>
<li><a href="Screenplay/ScreenplayList.jsp">Screenplay</a>
<li><a href="Report/ReportList.jsp">Report</a>
<li><a href="LegalDocument/LegalDocumentList.jsp">LegalDocument</a>
<ol class="bulletedList">
<li><a href="Legislation/LegislationList.jsp">Legislation</a>
<ol class="bulletedList">
<li><a href="Statute/StatuteList.jsp">Statute</a>
<li><a href="Bill/BillList.jsp">Bill</a>
</ol>
<li><a href="LegalCaseDocument/LegalCaseDocumentList.jsp">LegalCaseDocument</a>
<ol class="bulletedList">
<li><a href="Brief/BriefList.jsp">Brief</a>
<li><a href="LegalDecision/LegalDecisionList.jsp">LegalDecision</a>
</ol>
</ol>
</ol>
<li><a href="IAO_0000033/IAO_0000033List.jsp">IAO_0000033</a>
<ol class="bulletedList">
<li><a href="IAO_0000005/IAO_0000005List.jsp">IAO_0000005</a>
<li><a href="IAO_0000104/IAO_0000104List.jsp">IAO_0000104</a>
<ol class="bulletedList">
<li><a href="OBI_0500000/OBI_0500000List.jsp">OBI_0500000</a>
</ol>
<li><a href="IAO_0000007/IAO_0000007List.jsp">IAO_0000007</a>
</ol>
<li><a href="IAO_0000009/IAO_0000009List.jsp">IAO_0000009</a>
<ol class="bulletedList">
<li><a href="IAO_0000003/IAO_0000003List.jsp">IAO_0000003</a>
<ol class="bulletedList">
<li><a href="UO_0000280/UO_0000280List.jsp">UO_0000280</a>
</ol>
</ol>
<li><a href="IAO_0000144/IAO_0000144List.jsp">IAO_0000144</a>
<li><a href="ERO_0000005/ERO_0000005List.jsp">ERO_0000005</a>
<ol class="bulletedList">
<li><a href="ERO_0000391/ERO_0000391List.jsp">ERO_0000391</a>
<li><a href="ERO_0001254/ERO_0001254List.jsp">ERO_0001254</a>
<li><a href="ERO_0001258/ERO_0001258List.jsp">ERO_0001258</a>
<ol class="bulletedList">
<li><a href="ERO_0001260/ERO_0001260List.jsp">ERO_0001260</a>
<li><a href="ERO_0001259/ERO_0001259List.jsp">ERO_0001259</a>
</ol>
<li><a href="ERO_0001255/ERO_0001255List.jsp">ERO_0001255</a>
<li><a href="ERO_0000394/ERO_0000394List.jsp">ERO_0000394</a>
<ol class="bulletedList">
<li><a href="ERO_0001263/ERO_0001263List.jsp">ERO_0001263</a>
<li><a href="ERO_0000396/ERO_0000396List.jsp">ERO_0000396</a>
</ol>
<li><a href="ERO_0000392/ERO_0000392List.jsp">ERO_0000392</a>
<ol class="bulletedList">
<li><a href="ERO_0001257/ERO_0001257List.jsp">ERO_0001257</a>
<li><a href="ERO_0001256/ERO_0001256List.jsp">ERO_0001256</a>
</ol>
<li><a href="ERO_0000393/ERO_0000393List.jsp">ERO_0000393</a>
<li><a href="ERO_0001261/ERO_0001261List.jsp">ERO_0001261</a>
<ol class="bulletedList">
<li><a href="ERO_0000395/ERO_0000395List.jsp">ERO_0000395</a>
<li><a href="ERO_0001262/ERO_0001262List.jsp">ERO_0001262</a>
</ol>
</ol>
<li><a href="Collection/CollectionList.jsp">Collection</a>
<ol class="bulletedList">
<li><a href="Website/WebsiteList.jsp">Website</a>
<ol class="bulletedList">
<li><a href="Blog/BlogList.jsp">Blog</a>
</ol>
<li><a href="Periodical/PeriodicalList.jsp">Periodical</a>
<ol class="bulletedList">
<li><a href="Magazine/MagazineList.jsp">Magazine</a>
<li><a href="Newspaper/NewspaperList.jsp">Newspaper</a>
<li><a href="Newsletter/NewsletterList.jsp">Newsletter</a>
<li><a href="Code/CodeList.jsp">Code</a>
<li><a href="Journal/JournalList.jsp">Journal</a>
<li><a href="CourtReporter/CourtReporterList.jsp">CourtReporter</a>
</ol>
<li><a href="Series/SeriesList.jsp">Series</a>
</ol>
<li><a href="IAO_0000300/IAO_0000300List.jsp">IAO_0000300</a>
<li><a href="ARG_2000379/ARG_2000379List.jsp">ARG_2000379</a>
<ol class="bulletedList">
<li><a href="Kind/KindList.jsp">Kind</a>
<ol class="bulletedList">
<li><a href="Location/LocationList.jsp">Location</a>
<li><a href="Group/GroupList.jsp">Group</a>
<li><a href="Organization/OrganizationList.jsp">Organization</a>
<li><a href="Individual/IndividualList.jsp">Individual</a>
</ol>
<li><a href="ARG_2000377/ARG_2000377List.jsp">ARG_2000377</a>
</ol>
<li><a href="IAO_0000027/IAO_0000027List.jsp">IAO_0000027</a>
<ol class="bulletedList">
<li><a href="IAO_0000109/IAO_0000109List.jsp">IAO_0000109</a>
<ol class="bulletedList">
<li><a href="IAO_0000032/IAO_0000032List.jsp">IAO_0000032</a>
<ol class="bulletedList">
<li><a href="ARG_2000008/ARG_2000008List.jsp">ARG_2000008</a>
<ol class="bulletedList">
<li><a href="ARG_2000009/ARG_2000009List.jsp">ARG_2000009</a>
</ol>
<li><a href="GlobalCitationCount/GlobalCitationCountList.jsp">GlobalCitationCount</a>
<li><a href="OBI_0001554/OBI_0001554List.jsp">OBI_0001554</a>
</ol>
</ol>
<li><a href="IAO_0000102/IAO_0000102List.jsp">IAO_0000102</a>
<ol class="bulletedList">
<li><a href="Definition/DefinitionList.jsp">Definition</a>
<li><a href="DbXref/DbXrefList.jsp">DbXref</a>
<li><a href="Synonym/SynonymList.jsp">Synonym</a>
<li><a href="SynonymType/SynonymTypeList.jsp">SynonymType</a>
</ol>
</ol>
</ol>
</ol>
<li><a href="BFO_0000020/BFO_0000020List.jsp">BFO_0000020</a>
<ol class="bulletedList">
<li><a href="BFO_0000017/BFO_0000017List.jsp">BFO_0000017</a>
<ol class="bulletedList">
<li><a href="BFO_0000016/BFO_0000016List.jsp">BFO_0000016</a>
<ol class="bulletedList">
<li><a href="BFO_0000034/BFO_0000034List.jsp">BFO_0000034</a>
</ol>
<li><a href="ERO_0000595/ERO_0000595List.jsp">ERO_0000595</a>
<li><a href="BFO_0000023/BFO_0000023List.jsp">BFO_0000023</a>
<ol class="bulletedList">
<li><a href="ERO_0000224/ERO_0000224List.jsp">ERO_0000224</a>
<li><a href="ERO_0000783/ERO_0000783List.jsp">ERO_0000783</a>
<ol class="bulletedList">
<li><a href="ERO_0000790/ERO_0000790List.jsp">ERO_0000790</a>
<li><a href="ERO_0000784/ERO_0000784List.jsp">ERO_0000784</a>
<li><a href="ERO_0000786/ERO_0000786List.jsp">ERO_0000786</a>
<li><a href="ERO_0000785/ERO_0000785List.jsp">ERO_0000785</a>
<li><a href="ERO_0000914/ERO_0000914List.jsp">ERO_0000914</a>
</ol>
<li><a href="AdministratorRole/AdministratorRoleList.jsp">AdministratorRole</a>
<li><a href="PresenterRole/PresenterRoleList.jsp">PresenterRole</a>
<li><a href="AdviseeRole/AdviseeRoleList.jsp">AdviseeRole</a>
<li><a href="ClinicalRole/ClinicalRoleList.jsp">ClinicalRole</a>
<li><a href="ResearcherRole/ResearcherRoleList.jsp">ResearcherRole</a>
<ol class="bulletedList">
<li><a href="InvestigatorRole/InvestigatorRoleList.jsp">InvestigatorRole</a>
<ol class="bulletedList">
<li><a href="CoPrincipalInvestigatorRole/CoPrincipalInvestigatorRoleList.jsp">CoPrincipalInvestigatorRole</a>
<li><a href="PrincipalInvestigatorRole/PrincipalInvestigatorRoleList.jsp">PrincipalInvestigatorRole</a>
</ol>
</ol>
<li><a href="OutreachProviderRole/OutreachProviderRoleList.jsp">OutreachProviderRole</a>
<li><a href="AdvisorRole/AdvisorRoleList.jsp">AdvisorRole</a>
<li><a href="ERO_0000787/ERO_0000787List.jsp">ERO_0000787</a>
<ol class="bulletedList">
<li><a href="ERO_0000789/ERO_0000789List.jsp">ERO_0000789</a>
<li><a href="ERO_0000788/ERO_0000788List.jsp">ERO_0000788</a>
</ol>
<li><a href="ReviewerRole/ReviewerRoleList.jsp">ReviewerRole</a>
<ol class="bulletedList">
<li><a href="PeerReviewerRole/PeerReviewerRoleList.jsp">PeerReviewerRole</a>
</ol>
<li><a href="ERO_0000012/ERO_0000012List.jsp">ERO_0000012</a>
<li><a href="LeaderRole/LeaderRoleList.jsp">LeaderRole</a>
<li><a href="ERO_0000225/ERO_0000225List.jsp">ERO_0000225</a>
<li><a href="AttendeeRole/AttendeeRoleList.jsp">AttendeeRole</a>
<li><a href="ERO_0000776/ERO_0000776List.jsp">ERO_0000776</a>
<ol class="bulletedList">
<li><a href="ERO_0000778/ERO_0000778List.jsp">ERO_0000778</a>
<ol class="bulletedList">
<li><a href="ERO_0000780/ERO_0000780List.jsp">ERO_0000780</a>
<li><a href="ERO_0000779/ERO_0000779List.jsp">ERO_0000779</a>
</ol>
<li><a href="ERO_0000777/ERO_0000777List.jsp">ERO_0000777</a>
</ol>
<li><a href="EditorRole/EditorRoleList.jsp">EditorRole</a>
<li><a href="OrganizerRole/OrganizerRoleList.jsp">OrganizerRole</a>
<li><a href="MemberRole/MemberRoleList.jsp">MemberRole</a>
<li><a href="TeacherRole/TeacherRoleList.jsp">TeacherRole</a>
<li><a href="OBI_0000017/OBI_0000017List.jsp">OBI_0000017</a>
</ol>
</ol>
<li><a href="Relationship/RelationshipList.jsp">Relationship</a>
<ol class="bulletedList">
<li><a href="Editorship/EditorshipList.jsp">Editorship</a>
<li><a href="Contract/ContractList.jsp">Contract</a>
<li><a href="IssuedCredential/IssuedCredentialList.jsp">IssuedCredential</a>
<ol class="bulletedList">
<li><a href="Certification/CertificationList.jsp">Certification</a>
<li><a href="Licensure/LicensureList.jsp">Licensure</a>
</ol>
<li><a href="AdvisingRelationship/AdvisingRelationshipList.jsp">AdvisingRelationship</a>
<ol class="bulletedList">
<li><a href="PostdocOrFellowAdvisingRelationship/PostdocOrFellowAdvisingRelationshipList.jsp">PostdocOrFellowAdvisingRelationship</a>
<li><a href="UndergraduateAdvisingRelationship/UndergraduateAdvisingRelationshipList.jsp">UndergraduateAdvisingRelationship</a>
<li><a href="GraduateAdvisingRelationship/GraduateAdvisingRelationshipList.jsp">GraduateAdvisingRelationship</a>
<li><a href="FacultyMentoringRelationship/FacultyMentoringRelationshipList.jsp">FacultyMentoringRelationship</a>
</ol>
<li><a href="Authorship/AuthorshipList.jsp">Authorship</a>
<li><a href="AwardReceipt/AwardReceiptList.jsp">AwardReceipt</a>
<li><a href="Grant/GrantList.jsp">Grant</a>
<li><a href="Position/PositionList.jsp">Position</a>
<ol class="bulletedList">
<li><a href="LibrarianPosition/LibrarianPositionList.jsp">LibrarianPosition</a>
<li><a href="FacultyAdministrativePosition/FacultyAdministrativePositionList.jsp">FacultyAdministrativePosition</a>
<li><a href="NonAcademicPosition/NonAcademicPositionList.jsp">NonAcademicPosition</a>
<li><a href="FacultyPosition/FacultyPositionList.jsp">FacultyPosition</a>
<li><a href="PrimaryPosition/PrimaryPositionList.jsp">PrimaryPosition</a>
<li><a href="NonFacultyAcademicPosition/NonFacultyAcademicPositionList.jsp">NonFacultyAcademicPosition</a>
<ol class="bulletedList">
<li><a href="PostdocPosition/PostdocPositionList.jsp">PostdocPosition</a>
</ol>
</ol>
<li><a href="AwardedDegree/AwardedDegreeList.jsp">AwardedDegree</a>
</ol>
<li><a href="BFO_0000019/BFO_0000019List.jsp">BFO_0000019</a>
<ol class="bulletedList">
<li><a href="ARG_2000021/ARG_2000021List.jsp">ARG_2000021</a>
<li><a href="ARG_2000022/ARG_2000022List.jsp">ARG_2000022</a>
</ol>
</ol>
</ol>
<li><a href="BFO_0000003/BFO_0000003List.jsp">BFO_0000003</a>
<ol class="bulletedList">
<li><a href="BFO_0000015/BFO_0000015List.jsp">BFO_0000015</a>
<ol class="bulletedList">
<li><a href="EducationalProcess/EducationalProcessList.jsp">EducationalProcess</a>
<ol class="bulletedList">
<li><a href="MedicalResidency/MedicalResidencyList.jsp">MedicalResidency</a>
<li><a href="Internship/InternshipList.jsp">Internship</a>
<li><a href="PostdoctoralTraining/PostdoctoralTrainingList.jsp">PostdoctoralTraining</a>
</ol>
<li><a href="Event/EventList.jsp">Event</a>
<ol class="bulletedList">
<li><a href="Performance/PerformanceList.jsp">Performance</a>
<li><a href="Workshop/WorkshopList.jsp">Workshop</a>
<li><a href="Meeting/MeetingList.jsp">Meeting</a>
<li><a href="Presentation/PresentationList.jsp">Presentation</a>
<ol class="bulletedList">
<li><a href="InvitedTalk/InvitedTalkList.jsp">InvitedTalk</a>
</ol>
<li><a href="Hearing/HearingList.jsp">Hearing</a>
<li><a href="Exhibit/ExhibitList.jsp">Exhibit</a>
<li><a href="Course/CourseList.jsp">Course</a>
<li><a href="Competition/CompetitionList.jsp">Competition</a>
<li><a href="Interview/InterviewList.jsp">Interview</a>
<li><a href="Conference/ConferenceList.jsp">Conference</a>
</ol>
<li><a href="AdvisingProcess/AdvisingProcessList.jsp">AdvisingProcess</a>
<li><a href="OCRE100038/OCRE100038List.jsp">OCRE100038</a>
<ol class="bulletedList">
<li><a href="Phase_1/Phase_1List.jsp">Phase_1</a>
<li><a href="Phase_3/Phase_3List.jsp">Phase_3</a>
<li><a href="Phase_4/Phase_4List.jsp">Phase_4</a>
<li><a href="Phase_0/Phase_0List.jsp">Phase_0</a>
<li><a href="Phase_2/Phase_2List.jsp">Phase_2</a>
</ol>
<li><a href="OBI_0000011/OBI_0000011List.jsp">OBI_0000011</a>
<ol class="bulletedList">
<li><a href="ERO_0000014/ERO_0000014List.jsp">ERO_0000014</a>
<ol class="bulletedList">
<li><a href="ERO_0000015/ERO_0000015List.jsp">ERO_0000015</a>
</ol>
<li><a href="ERO_0000007/ERO_0000007List.jsp">ERO_0000007</a>
<li><a href="ERO_0001245/ERO_0001245List.jsp">ERO_0001245</a>
<li><a href="ARG_2000010/ARG_2000010List.jsp">ARG_2000010</a>
<ol class="bulletedList">
<li><a href="ARG_2000011/ARG_2000011List.jsp">ARG_2000011</a>
</ol>
</ol>
<li><a href="EventSeries/EventSeriesList.jsp">EventSeries</a>
<ol class="bulletedList">
<li><a href="SeminarSeries/SeminarSeriesList.jsp">SeminarSeries</a>
<li><a href="WorkshopSeries/WorkshopSeriesList.jsp">WorkshopSeries</a>
<li><a href="ConferenceSeries/ConferenceSeriesList.jsp">ConferenceSeries</a>
</ol>
<li><a href="AttendingProcess/AttendingProcessList.jsp">AttendingProcess</a>
<li><a href="OrganizingProcess/OrganizingProcessList.jsp">OrganizingProcess</a>
<li><a href="Project/ProjectList.jsp">Project</a>
<ol class="bulletedList">
</ol>
<li><a href="PresentingProcess/PresentingProcessList.jsp">PresentingProcess</a>
</ol>
<li><a href="BFO_0000008/BFO_0000008List.jsp">BFO_0000008</a>
<ol class="bulletedList">
<li><a href="BFO_0000148/BFO_0000148List.jsp">BFO_0000148</a>
<ol class="bulletedList">
<li><a href="DateTimeValue/DateTimeValueList.jsp">DateTimeValue</a>
</ol>
<li><a href="BFO_0000038/BFO_0000038List.jsp">BFO_0000038</a>
<ol class="bulletedList">
<li><a href="DateTimeInterval/DateTimeIntervalList.jsp">DateTimeInterval</a>
<ol class="bulletedList">
<li><a href="AcademicYear/AcademicYearList.jsp">AcademicYear</a>
<li><a href="AcademicTerm/AcademicTermList.jsp">AcademicTerm</a>
</ol>
</ol>
</ol>
</ol>
</ol>
<li><a href="FunctionalProperty/FunctionalPropertyList.jsp">FunctionalProperty</a>
<li><a href="Security/SecurityList.jsp">Security</a>
<ol class="bulletedList">
<li><a href="Key/KeyList.jsp">Key</a>
</ol>
<li><a href="Thing/ThingList.jsp">Thing</a>
<ol class="bulletedList">
<li><a href="NamedIndividual/NamedIndividualList.jsp">NamedIndividual</a>
<li><a href="Area/AreaList.jsp">Area</a>
<ol class="bulletedList">
<li><a href="Group/GroupList.jsp">Group</a>
<ol class="bulletedList">
<li><a href="Special_group/Special_groupList.jsp">Special_group</a>
<li><a href="Economic_region/Economic_regionList.jsp">Economic_region</a>
<li><a href="Organization/OrganizationList.jsp">Organization</a>
</ol>
</ol>
<li><a href="Nothing/NothingList.jsp">Nothing</a>
</ol>
<li><a href="DatatypeProperty/DatatypePropertyList.jsp">DatatypeProperty</a>
<li><a href="Ontology/OntologyList.jsp">Ontology</a>
</ol>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

