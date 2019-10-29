<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Math Domain                                  -->
<!--  VERSION:   1.1                                               -->
<!--  DATE:      April 2012                                        -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//BENTLEY//ELEMENTS DITA Math Domain//EN"
      Delivered as file "bentley_mathDomain.mod"                   -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for the Math Domain                    -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             November 2011                                     -->
<!--                                                               -->
<!--             Copyright (c) Bentley Systems, Incorporated.      -->
<!--             All rights reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!-- 2012-04-23 JTC: changed mathph & math elements to foreign     -->
<!-- 2013-01-04 JTC: pointed to relocated local MathML 2 DTD       -->
<!-- 2013-03-07 JTC: pointed to MathML 3 DTD for use with MathFlow -->
<!-- 2015-01-14 JTC: removed 'sub' and 'sup' elements; highlight   -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!-- included MathML document type --> <!-- JTC: 2012-05-09 -->
<!ENTITY % MATHML.prefixed "INCLUDE">
<!ENTITY % MATHML.prefix "mml">
<!ENTITY % MathMLstrict "INCLUDE">
<!ENTITY % mathml
    PUBLIC  "-//W3C//DTD MathML 3.0//EN"
            "mathml3/dtd/mathml3.dtd"
>%mathml;
<!-- Note: local copy of DocType "http://www.w3.org/Math/DTD/mathml3/mathml3.dtd" -->

<!ENTITY % mathph   	"mathph"                                     >
<!ENTITY % equation		"equation"                                   >
<!ENTITY % math			"math"										 >

<!ENTITY % eqsymbols	"eqsymbols"									 >
<!ENTITY % eqsymbol		"eqsymbol"									 >
<!ENTITY % symname		"symname"									 >
<!ENTITY % symdesc		"symdesc"									 >


<!-- ============================================================= -->
<!--                  MATH KEYWORD TYPES ELEMENT DECLARATIONS      -->
<!-- ============================================================= -->



								  
<!--                    LONG NAME: Equation 						-->                  
<!ELEMENT equation      ((%title;)?, (%desc;)?, 
                         (%math; | %eqsymbols;)* )                    >
<!ATTLIST equation    
             %display-atts;
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             outputclass 
                        CDATA                            #IMPLIED    >
                        
                        
<!--                    LONG NAME: Math Phrase			           -->  <!-- %sub; | %sup; -->
<!ELEMENT mathph    (%words.cnt; |  %hi-d-ph;
                     | %image; | %math.qname;)*	                     > <!-- JTC: 2012-05-09 -->
<!ATTLIST mathph    keyref 	
                        CDATA 
                                  #IMPLIED
              %univ-atts; 
              outputclass 
                        CDATA
                                  #IMPLIED
               xmlns:mml 
                        CDATA 
                                  #FIXED "http://www.w3.org/1998/Math/MathML" >


<!--                    LONG NAME: Math			                    -->
<!ELEMENT math          (%para.cnt; | %math.qname;)*                  > <!-- JTC: 2012-05-09 -->
<!ATTLIST math    
             %display-atts;
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             outputclass 
                        CDATA                            #IMPLIED    
              xmlns:mml 
                        CDATA 
                                  #FIXED "http://www.w3.org/1998/Math/MathML" >


<!--                    LONG NAME: Equation Symbol List            -->
<!ELEMENT eqsymbols    (%eqsymbol;)+                                 >
<!ATTLIST eqsymbols       
             compact    (yes | no |
                         -dita-use-conref-target)        #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Equation Symbol List Entry      -->
<!ELEMENT eqsymbol      ((%symname;)+, (%symdesc;)+)                 >
<!ATTLIST eqsymbol      
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Symbol Name	                   -->
<!ELEMENT symname       (%term.cnt;)*                                > 
<!ATTLIST symname      
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Symbol Description              -->
<!ELEMENT symdesc       (%defn.cnt;)*                                >
<!ATTLIST symdesc        
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >						
						
                        
<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!ATTLIST mathph 	%global-atts;  class CDATA "+ topic/foreign mt-d/mathph " >
<!ATTLIST equation  %global-atts;  class CDATA "+ topic/fig mt-d/equation " >
<!ATTLIST math      %global-atts;  class CDATA "+ topic/foreign mt-d/math " >
<!ATTLIST eqsymbols	%global-atts;  class CDATA "+ topic/dl mt-d/eqsymbols " >
<!ATTLIST eqsymbol  %global-atts;  class CDATA "+ topic/dlentry mt-d/eqsymbol " >
<!ATTLIST symname	%global-atts;  class CDATA "+ topic/dt mt-d/symname " >
<!ATTLIST symdesc	%global-atts;  class CDATA "+ topic/dd mt-d/symdesc " >


<!-- ================== End DITA Math Domain ===================== -->