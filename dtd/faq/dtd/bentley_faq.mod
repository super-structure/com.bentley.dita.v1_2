<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA FAQ Elements                                 -->
<!--  VERSION:   1.0                                               -->
<!--  DATE:      September 2014                                    -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//BENTLEY//ELEMENTS DITA FAQ//EN"
      Delivered as file "bentley_faq.mod"                          -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Define elements and specialization atttributes    -->
<!--             for Concepts                                      -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             February 2014                                     -->
<!--                                                               -->
<!-- (c) Copyright IBM Corp. 2004, 2005 All Rights Reserved. -->
<!--             (C) Copyright Bentley Systems, Incorporated 2014. -->
<!--             (C) Copyright OASIS Open 2005, 2009.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--  UPDATES:                                                     -->
<!--    2005.11.15 RDA: Removed old declaration for                -->
<!--                    conceptClasses entity                      -->
<!--    2006.06.07 RDA: Added <abstract> element                   -->
<!--    2006.06.07 RDA: Make universal attributes universal        -->
<!--                      (DITA 1.1 proposal #12)                  -->
<!--    2006.11.30 RDA: Remove #FIXED from DITAArchVersion         -->
<!--    2007.12.01 EK:  Reformatted DTD modules for DITA 1.2       -->
<!--    2008.01.30 RDA: Replace @conref defn. with %conref-atts;   -->
<!--    2008.02.13 RDA: Create .content and .attributes entities   -->
<!--    2008.05.06 RDA: Added conbodydiv                           -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- default namespace prefix for DITAArchVersion attribute can be
     overridden through predefinition in the document type shell   -->
<!ENTITY % DITAArchNSPrefix
  "ditaarch"
>

<!-- must be instanced on each topic type                          -->
<!ENTITY % arch-atts 
             "xmlns:%DITAArchNSPrefix; 
                        CDATA
                                  #FIXED 'http://dita.oasis-open.org/architecture/2005/'
              %DITAArchNSPrefix;:DITAArchVersion
                        CDATA
                                  '1.2'
"
>

<!-- ============================================================= -->
<!--                   SPECIALIZATION OF DECLARED ELEMENTS         -->
<!-- ============================================================= -->

<!ENTITY % faq-info-types 
  "%info-types;
  "
>

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->
<!ENTITY % faqbody "faqbody">
<!ENTITY % faqgroup "faqgroup">
<!ENTITY % faqlist "faqlist">
<!ENTITY % faqitem "faqitem">
<!ENTITY % faqquest "faqquest">
<!ENTITY % faqans "faqans">
<!ENTITY % faqprop "faqprop">
<!ENTITY % name "name">
<!ENTITY % ownerEmail "ownerEmail">

<!-- ============ Hooks for shell DTD ============ -->
<!--<!ENTITY % faq-info-types "%info-types;">-->
<!--                      Content elements common to map and topic -->
<!--<!ENTITY % commonElements 
  PUBLIC "-//BENTLEY//ELEMENTS DITA 1.2 Common Elements//EN" 
         "../../base/dtd/bentley_commonElements.mod" 
>%commonElements;

<!ENTITY % topic
 PUBLIC "-//BENTLEY//ELEMENTS DITA Topic//EN"
        "../../base/dtd/bentley_topic.mod"
>%topic;-->

<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->
<!ENTITY included-domains "">

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--        LONG NAME: Frequently Asked Questions Type		       -->
<!ENTITY % faq.content
                       "((%title;), 
                         (%titlealts;)?,
                         (%abstract; | 
                          %shortdesc;)?, 
                         (%prolog;)?, 
                         (%faqbody;)?, 
                         (%related-links;)?,
                         (%faq-info-types;)* )"
>
<!ENTITY % faq.attributes
             "%topic.attributes;"
>
<!ELEMENT faq    %faq.content;>
<!ATTLIST faq    
              %faq.attributes;
              %arch-atts;
              domains 
                        CDATA 
                                  "&included-domains;">


<!--<!ELEMENT faq         ((%title;), (%titlealts;)?, (%shortdesc;)?, (%prolog;)?, (%faqbody;), (%related-links;)?, (%faq-info-types;)* )>
<!ATTLIST faq             id ID #REQUIRED
                          conref CDATA #IMPLIED
                          outputclass CDATA #IMPLIED
                          xml:lang NMTOKEN #IMPLIED
                          %arch-atts;
                          domains CDATA "&included-domains;"
>-->

<!--                  LONG NAME: FAQ Body			               -->
<!ENTITY % faqbody.content
                       "((%faqgroup;)+ | 
                         (%faqlist;) )"
>
<!ENTITY % faqbody.attributes
             "%id-atts;
              %ishlabelxpath-general-default;
              %ishlinkxpath-general-default;
              %localization-atts;
              base 
                        CDATA 
                                  #IMPLIED
              %base-attribute-extensions;
              outputclass 
                        CDATA 
                                  #IMPLIED
              inc-list
                        ( yes | no  | 
                         -dita-use-conref-target)
                                    'no'"
>
<!ELEMENT faqbody    %faqbody.content;>
<!ATTLIST faqbody    %faqbody.attributes;>

<!--<!ELEMENT faqbody     ((%faqgroup;)+ | (%faqlist;))>
<!ATTLIST faqbody         %univ-atts;
                          outputclass CDATA #IMPLIED
>-->

<!--                  LONG NAME: FAQ Grouping                      -->
<!ENTITY % faqgroup.content
                       "((%title;)*, 
                       (%faqlist;) )"
>
<!ENTITY % faqgroup.attributes
             "%section.attributes;"
>
<!ELEMENT faqgroup    %faqgroup.content;>
<!ATTLIST faqgroup    %faqgroup.attributes;>


<!--<!ELEMENT faqgroup    ((%title;), (%faqlist;))>
<!ATTLIST faqgroup        spectitle CDATA #IMPLIED
                          %univ-atts;
                          outputclass CDATA #IMPLIED
>-->

<!--                  LONG NAME: FAQ list                          -->
<!ENTITY % faqlist.content
                        "(%faqitem;)+"
>
<!ENTITY % faqlist.attributes 
            "%simpletable.attributes;"

>
<!ELEMENT faqlist     %faqlist.content; >
<!ATTLIST faqlist     %faqlist.attributes; >

<!--<!ELEMENT faqlist     (%faqitem;)+>
<!ATTLIST faqlist         relcolwidth CDATA #IMPLIED
                          keycol NMTOKEN #IMPLIED
                          refcols NMTOKENS #IMPLIED
                          %display-atts;
                          %univ-atts;
                          spectitle CDATA #IMPLIED
                          outputclass CDATA #IMPLIED
>-->

<!--                  LONG NAME: FAQ Item                          -->
<!ENTITY % faqitem.content
                        "( (%faqquest;), 
                           (%faqans;), 
                           (%faqprop;)? )"
>
<!ENTITY % faqitem.attributes 
            "%strow.attributes;"
>
<!ELEMENT faqitem     %faqitem.content; >
<!ATTLIST faqitem     %faqitem.attributes; >

<!--<!ELEMENT faqitem     ((%faqquest;), (%faqans;), (%faqprop;)?)>
<!ATTLIST faqitem         %univ-atts;
                          outputclass CDATA #IMPLIED
>-->

<!--                  LONG NAME: FA Question                       -->
<!ENTITY % faqquest.content
                        "(%tblcell.cnt;)*"
>
<!ENTITY % faqquest.attributes 
            "%stentry.attributes;"
>
<!ELEMENT faqquest     %faqquest.content; >
<!ATTLIST faqquest     %faqquest.attributes; >

<!--<!ELEMENT faqquest    (%tblcell.cnt;)*>
<!ATTLIST faqquest        %univ-atts;
                          specentry CDATA "Question"
                          outputclass CDATA #IMPLIED
>-->

<!--                  LONG NAME: FAQ Answer                        -->
<!ENTITY % faqans.content
                        "(%tblcell.cnt;)*"
>
<!ENTITY % faqans.attributes 
            "%stentry.attributes;"
>
<!ELEMENT faqans     %faqans.content; >
<!ATTLIST faqans     %faqans.attributes; >

<!--<!ELEMENT faqans      (%tblcell.cnt;)*>
<!ATTLIST faqans          %univ-atts;
                          specentry CDATA "Answer"
                          outputclass CDATA #IMPLIED
>-->

<!--                   LONG NAME: FAQ Properties                   -->
<!ENTITY % faqprop.content
                        "(%ownerEmail;)*"
>
<!ENTITY % faqprop.attributes 
            "%stentry.attributes;"
>
<!ELEMENT faqprop     %faqprop.content; >
<!ATTLIST faqprop     %faqprop.attributes; >

<!--<!ELEMENT faqprop     (%ownerEmail;)*>
<!ATTLIST faqprop         %univ-atts;
                          specentry CDATA "Properties"
                          outputclass CDATA #IMPLIED
>
-->

<!--                    LONG NAME: Name                            -->
<!ENTITY % name.content
                        "%text.content;"
>
<!ENTITY % name.attributes 
            "%univ-atts;
              %ishlabelxpath-general-default;
              %ishlinkxpath-general-default;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT name     %name.content; >
<!ATTLIST name     %name.attributes; >

<!--<!ELEMENT name        (#PCDATA)>
<!ATTLIST name            %univ-atts;
                          outputclass CDATA #IMPLIED
>-->

<!--                    LONG NAME: Owner E-mail                    -->
<!ENTITY % ownerEmail.content
                        "(%name;)*"
>
<!ENTITY % ownerEmail.attributes 
            "href 
                        CDATA 
                                  #IMPLIED
              keyref 
                        CDATA 
                                  #IMPLIED
              type 
                        CDATA 
                                  #IMPLIED
              format 
                        CDATA 
                                  'mailto'
              scope 
                        (external | 
                         local | 
                         peer | 
                         -dita-use-conref-target) 
                                  'external'
              %univ-atts;
              %ishlabelxpath-general-default;
              %ishlinkxpath-general-default;
              %ishhyperlinkxpath-general-default;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT ownerEmail     %ownerEmail.content; >
<!ATTLIST ownerEmail     %ownerEmail.attributes; >

<!--<!ELEMENT ownerEmail  (%name;)*>
<!ATTLIST ownerEmail      href CDATA #IMPLIED
                          keyref NMTOKEN #IMPLIED
                          %univ-atts;
                          format CDATA "mailto"
                          scope (local | peer | external) "external"
                          outputclass CDATA #IMPLIED
>-->


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->
<!ATTLIST faq         %global-atts;  class  CDATA "- topic/topic       faq/faq ">
<!ATTLIST faqbody     %global-atts;  class  CDATA "- topic/body        faq/faqbody ">
<!ATTLIST faqgroup    %global-atts;  class  CDATA "- topic/section     faq/faqgroup ">
<!ATTLIST faqlist     %global-atts;  class  CDATA "- topic/simpletable faq/faqlist ">
<!ATTLIST faqitem     %global-atts;  class  CDATA "- topic/strow       faq/faqitem ">
<!ATTLIST faqquest    %global-atts;  class  CDATA "- topic/stentry     faq/faqquest ">
<!ATTLIST faqans      %global-atts;  class  CDATA "- topic/stentry     faq/faqans ">
<!ATTLIST faqprop     %global-atts;  class  CDATA "- topic/stentry     faq/faqprop ">
<!ATTLIST name        %global-atts;  class  CDATA "- topic/ph          faq/name ">
<!ATTLIST ownerEmail  %global-atts;  class  CDATA "- topic/xref        faq/ownerEmail ">

<!-- ===================== End DITA FAQ  ========================= -->