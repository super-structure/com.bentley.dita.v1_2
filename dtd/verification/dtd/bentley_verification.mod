<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Verification                                 -->
<!--  VERSION:   1.1                                               -->
<!--  DATE:      August 2018                                       -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//BENTLEY//ELEMENTS DITA Verification//EN"
      Delivered as file "verification.mod"                         -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Define elements and specialization atttributes    -->
<!--             for Concepts                                      -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             February 2014                                     -->
<!--                                                               -->
<!--             (C) Copyright Bentley Systems, Incorporated 2014. -->
<!--             (C) Copyright OASIS Open 2005, 2009.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--  UPDATES:                                                     -->
<!--    2018.08.03 JTC: Update verbody content model so references -->
<!--                    may occur at beginning or end              -->
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


<!ENTITY % verification-info-types 
  "%info-types;
  "
>


<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->
 

<!ENTITY % verification     "verification"                           >
<!ENTITY % verbody     "verbody"                                     >
<!ENTITY % verbodydiv  "verbodydiv"                                  >
<!ENTITY % reference    "reference"                                  >
<!ENTITY % problem      "problem"                                    >
<!ENTITY % calcs        "calcs"                                      >
<!ENTITY % comparison   "comparison"                                 >
<!ENTITY % input        "input"                                      >
<!ENTITY % output       "output"                                     >


<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->


<!ENTITY included-domains 
  ""
>


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!--                    LONG NAME: Verification Problem            -->
<!ENTITY % verification.content
                       "((%title;), 
                         (%titlealts;)?,
                         (%abstract; | 
                          %shortdesc;)?, 
                         (%prolog;)?, 
                         (%verbody;)?, 
                         (%related-links;)?,
                         (%verification-info-types;)* )"
>
<!ENTITY % verification.attributes
             "id 
                        ID 
                                  #REQUIRED
              %conref-atts;
              %select-atts;
              %localization-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT verification    %verification.content;>
<!ATTLIST verification    
              %verification.attributes;
              %arch-atts;
              domains 
                        CDATA 
                                  "&included-domains;">



<!--                    LONG NAME: Verification Body                -->
<!ENTITY % verbody.content
                       "( ((%reference;)?, 
                         (%problem;)?,
                         (%calcs;)?,
                         (%comparison;)?,
                         (%input;)?,
                         (%output;)? ) | 
                         ( (%problem;)?,
                         (%calcs;)?,
                         (%comparison;)?,
                         (%input;)?,
                         (%output;)?,
                         (%reference;)? ) )"
>
<!ENTITY % verbody.attributes
             "%id-atts;
              %localization-atts;
              base 
                        CDATA 
                                  #IMPLIED
              %base-attribute-extensions;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT verbody    %verbody.content;>
<!ATTLIST verbody    %verbody.attributes;>

<!--                    LONG NAME: Verification Body division       -->
<!ENTITY % verbodydiv.content
                       "(%example; |
                         %section;)*"
>
<!ENTITY % verbodydiv.attributes
             "%univ-atts;
              outputclass 
                        CDATA
                                  #IMPLIED"
>
<!ELEMENT verbodydiv    %verbodydiv.content;>
<!ATTLIST verbodydiv    %verbodydiv.attributes;>


<!--                   LONG NAME: Reference                        -->
<!ENTITY % reference.content
                        "(%section.cnt;)*"
>
<!ENTITY % reference.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT reference     %reference.content; >
<!ATTLIST reference     %reference.attributes; >

<!--                   LONG NAME: Problem Statement                -->
<!ENTITY % problem.content
                        "(%section.cnt;)*"
>
<!ENTITY % problem.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT problem     %problem.content; >
<!ATTLIST problem     %problem.attributes; >

<!--                    LONG NAME: Calculations Container          -->
<!ENTITY % calcs.content
                       "(%section.notitle.cnt; |
                         %verbodydiv; |
                         %section;)*"
>
<!ENTITY % calcs.attributes
             "%univ-atts;
              outputclass 
                        CDATA
                                  #IMPLIED"
>
<!ELEMENT calcs    %calcs.content;>
<!ATTLIST calcs    %calcs.attributes;>

<!--                   LONG NAME: Comparison                       -->
<!ENTITY % comparison.content
                        "(%section.cnt;)*"
>
<!ENTITY % comparison.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT comparison     %comparison.content; >
<!ATTLIST comparison     %comparison.attributes; >

<!--                   LONG NAME: Input Example                    -->
<!ENTITY % input.content
                        "(%example.cnt;)*"
>
<!ENTITY % input.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT input     %input.content; >
<!ATTLIST input     %input.attributes; >

<!--                   LONG NAME: Output Example                   -->
<!ENTITY % output.content
                        "(%example.cnt;)*"
>
<!ENTITY % output.attributes 
            "spectitle 
                        CDATA 
                                  #IMPLIED
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT output     %output.content; >
<!ATTLIST output     %output.attributes; >
 
<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST verification %global-atts;  class CDATA "- topic/topic verification/verification ">
<!ATTLIST verbody      %global-atts;  class CDATA "- topic/body verification/verbody "      >
<!ATTLIST verbodydiv   %global-atts;  class CDATA "- topic/bodydiv verification/verbodydiv ">
<!ATTLIST reference    %global-atts;  class CDATA "- topic/section verification/reference " >
<!ATTLIST problem      %global-atts;  class CDATA "- topic/section verification/problem "   >
<!ATTLIST calcs        %global-atts;  class CDATA "- topic/bodydiv verification/calcs "     >
<!ATTLIST comparison   %global-atts;  class CDATA "- topic/section verification/comparison ">
<!ATTLIST input        %global-atts;  class CDATA "- topic/example verification/input "     >
<!ATTLIST output       %global-atts;  class CDATA "- topic/example verification/output "    >


<!-- ================== End DITA Concept  ======================== -->




