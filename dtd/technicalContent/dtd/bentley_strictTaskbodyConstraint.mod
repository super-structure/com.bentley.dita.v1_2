<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Strict Taskbody Constraint                   -->
<!--  VERSION:   1.2                                               -->
<!--  DATE:      January 2013                                      -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//BENTLEY//ELEMENTS DITA Strict Taskbody Constraint//EN"
      Delivered as file "strictTaskbodyConstraint.mod"             -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the domain entity for the strict task   -->
<!--             constraint module                                 -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             April 2008                                        -->
<!--                                                               -->
<!--             Copyright (c) Bentley Systems, Incorporated.      -->
<!--             All rights reserved.                              -->
<!--             (C) Copyright OASIS Open 2008, 2009.              -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2013.01.04 JTC: Created shell copy for Bentley             -->
<!--                    specializations                            -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                    Strict Taskbody ENTITIES                   -->
<!-- ============================================================= -->

<!ENTITY taskbody-constraints     
  "(topic task strictTaskbody-c)"
>

<!ENTITY % prereq          "prereq">
<!ENTITY % context         "context">
<!ENTITY % steps           "steps">
<!ENTITY % steps-unordered "steps-unordered">
<!ENTITY % result          "result">
<!ENTITY % example         "example">
<!ENTITY % postreq         "postreq">

<!ENTITY % taskbody.content
                       "((%prereq;)?, 
                         (%context;)?,
                         (%steps; | 
                          %steps-unordered;)?, 
                         (%result;)?, 
                         (%example;)?, 
                         (%postreq;)?)"
>

<!-- ================== End Strict Taskbody Entities ============= -->
