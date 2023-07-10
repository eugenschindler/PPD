<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a900251b-b07a-4cd6-a7e7-bc85846149da(org.itemis.phydev.build.build)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="1" />
  </languages>
  <imports>
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="ip48" ref="r:c3d6ae0c-8b10-477f-a3e9-5dc8700ceb13(org.iets3.opensource.build.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
  </imports>
  <registry>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildAspect_MpsTestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
        <child id="6593674873639474544" name="options" index="24cAkG" />
      </concept>
      <concept id="4560297596904469362" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModule" flags="nn" index="22LTRM">
        <reference id="4560297596904469363" name="module" index="22LTRN" />
      </concept>
      <concept id="6593674873639474400" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModules_Options" flags="ng" index="24cAiW">
        <child id="6593674873639478221" name="haltonfailure" index="24c_eh" />
        <child id="1688667350638517006" name="compressArgs" index="XX84c" />
      </concept>
      <concept id="4005526075820600484" name="jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin" flags="ng" index="1gjT0q" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="927724900262033858" name="jetbrains.mps.build.structure.BuildSource_JavaOptions" flags="ng" index="2_Ic$z">
        <property id="927724900262398947" name="heapSize" index="2_GNG2" />
        <property id="927724900262033861" name="generateDebugInfo" index="2_Ic$$" />
        <property id="927724900262033862" name="copyResources" index="2_Ic$B" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6503355885715333289" name="jetbrains.mps.build.mps.structure.BuildMpsAspect" flags="ng" index="2igEWh">
        <property id="7981469545489178349" name="generationMaxHeapSizeInMb" index="3UIfUI" />
      </concept>
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499036" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule" flags="ng" index="m$_yB">
        <reference id="6592112598314499037" name="target" index="m$_yA" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="4297162197620964123" name="jetbrains.mps.build.mps.structure.BuildMps_GeneratorOptions" flags="ng" index="1wNqPr">
        <property id="4297162197620978188" name="strict" index="1wNuhc" />
        <property id="4297162197620978190" name="parallel" index="1wNuhe" />
        <property id="4297162197620978193" name="parallelThreads" index="1wNuhh" />
        <property id="4297162197621031140" name="inplace" index="1wOHq$" />
        <property id="6535001758416941941" name="createStaticRefs" index="3Ej$Sc" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731981027" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleSolutionRuntime" flags="ng" index="1E0d5M">
        <reference id="3189788309731981028" name="solution" index="1E0d5P" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="3189788309731917348" name="runtime" index="1E1XAP" />
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="6uyzASnqGG0">
    <property role="2DA0ip" value="./../../../build/scripts" />
    <property role="TrG5h" value="org.itemis.phydev.build" />
    <property role="turDy" value="build-languages.xml" />
    <node concept="2_Ic$z" id="Ji$st3HAsf" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
    </node>
    <node concept="m$_wf" id="Ji$st3HnNn" role="3989C9">
      <property role="m$_wk" value="org.itemis.phydev.build" />
      <node concept="m$_yC" id="Ji$st3HnQY" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5HVSRHdVm9a" resolve="jetbrains.mps.build" />
      </node>
      <node concept="m$_yC" id="Ji$st3HnSy" role="m$_yJ">
        <ref role="m$_y1" to="ip48:64GCIgM55Fn" resolve="org.iets3.build.os" />
      </node>
      <node concept="3_J27D" id="Ji$st3HnNp" role="m$_yQ">
        <node concept="3Mxwew" id="Ji$st3HnPZ" role="3MwsjC">
          <property role="3MwjfP" value="phydev.build" />
        </node>
      </node>
      <node concept="3_J27D" id="Ji$st3HnNr" role="m_cZH">
        <node concept="3Mxwew" id="Ji$st3HnQ1" role="3MwsjC">
          <property role="3MwjfP" value="phydev.build" />
        </node>
      </node>
      <node concept="3_J27D" id="Ji$st3HnNt" role="m$_w8">
        <node concept="3Mxwew" id="Ji$st3HnQa" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$_yB" id="Ji$st3HnQj" role="m$_yh">
        <ref role="m$_yA" node="Ji$st3HkJ8" resolve="org.itemis.phydev.build" />
      </node>
    </node>
    <node concept="m$_wf" id="Ji$st3HsJo" role="3989C9">
      <property role="m$_wk" value="org.itemis.phydev" />
      <node concept="m$_yC" id="Ji$st3HsMX" role="m$_yJ">
        <ref role="m$_y1" to="ip48:5wLtKNeSRRD" resolve="org.iets3.core.os" />
      </node>
      <node concept="3_J27D" id="Ji$st3HsJq" role="m$_yQ">
        <node concept="3Mxwew" id="Ji$st3HsLP" role="3MwsjC">
          <property role="3MwjfP" value="phydev" />
        </node>
      </node>
      <node concept="3_J27D" id="Ji$st3HsJs" role="m_cZH">
        <node concept="3Mxwew" id="Ji$st3HsLR" role="3MwsjC">
          <property role="3MwjfP" value="phydev" />
        </node>
      </node>
      <node concept="3_J27D" id="Ji$st3HsJu" role="m$_w8">
        <node concept="3Mxwew" id="Ji$st3HsM0" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="Ji$st3H$g$" role="m$_yh">
        <ref role="m$f5T" node="Ji$st3FDQm" resolve="phydev" />
      </node>
      <node concept="m$f5U" id="5sn4YBkdH28" role="m$_yh">
        <ref role="m$f5T" node="5sn4YBkcRDe" resolve="world2d" />
      </node>
    </node>
    <node concept="2G$12M" id="Ji$st3HkGr" role="3989C9">
      <property role="TrG5h" value="phydev.build" />
      <node concept="1E1JtA" id="Ji$st3HkJ8" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.itemis.phydev.build" />
        <property role="3LESm3" value="6fbcaa51-7865-4de3-9f36-bfe4d9ef9c05" />
        <node concept="398BVA" id="Ji$st3HkJj" role="3LF7KH">
          <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="Ji$st3HkJB" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="Ji$st3HkJU" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="Ji$st3HkKd" role="2Ry0An">
                <property role="2Ry0Am" value="org.itemis.phydev.build" />
                <node concept="2Ry0Ak" id="Ji$st3HkKw" role="2Ry0An">
                  <property role="2Ry0Am" value="org.itemis.phydev.build.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3HkKD" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3HkKE" role="1SiIV1">
            <ref role="3bR37D" to="ip48:7C6tnXfWu6n" resolve="org.iets3.opensource.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3HkKF" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3HkKG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3HkKH" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3HkKI" role="1SiIV1">
            <ref role="3bR37D" to="al5i:7Pr7tifzlku" resolve="com.mbeddr.platform" />
          </node>
        </node>
        <node concept="1BupzO" id="Ji$st3HkKO" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="Ji$st3HkKP" role="1HemKq">
            <node concept="398BVA" id="Ji$st3HkKJ" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="Ji$st3HkKK" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="Ji$st3HkKL" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="Ji$st3HkKM" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev.build" />
                    <node concept="2Ry0Ak" id="Ji$st3HkKN" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="Ji$st3HkKQ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2Ar3EGnfR3p" role="3bR37C">
          <node concept="3bR9La" id="2Ar3EGnfR3q" role="1SiIV1">
            <ref role="3bR37D" to="90a9:PE3B26VOkn" resolve="de.itemis.mps.extensions.build" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5sn4YBkcRDe" role="3989C9">
      <property role="TrG5h" value="world2d" />
      <node concept="1E1JtA" id="5sn4YBkcRKu" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.itemis.world2d.runtime" />
        <property role="3LESm3" value="80715590-c3e6-4f55-9f83-69945c0e090a" />
        <node concept="398BVA" id="5sn4YBkcRN8" role="3LF7KH">
          <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="5sn4YBkcRNs" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="5sn4YBkcROu" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="5sn4YBkcROS" role="2Ry0An">
                <property role="2Ry0Am" value="org.itemis.world2d" />
                <node concept="2Ry0Ak" id="5sn4YBkcRPb" role="2Ry0An">
                  <property role="2Ry0Am" value="runtime" />
                  <node concept="2Ry0Ak" id="5sn4YBkcRPu" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.world2d.runtime.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="5sn4YBkcRPM" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5sn4YBkcRPN" role="1HemKq">
            <node concept="398BVA" id="5sn4YBkcRPG" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="5sn4YBkcRPH" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="5sn4YBkcRPI" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5sn4YBkcRPJ" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.world2d" />
                    <node concept="2Ry0Ak" id="5sn4YBkcRPK" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime" />
                      <node concept="2Ry0Ak" id="5sn4YBkcRPL" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5sn4YBkcRPO" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="5sn4YBkcRFW" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.itemis.world2d" />
        <property role="3LESm3" value="3d42449e-9670-4233-9f68-ba0596ae57f9" />
        <node concept="398BVA" id="5sn4YBkcRG7" role="3LF7KH">
          <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="5sn4YBkcRGr" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="5sn4YBkcRGP" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="5sn4YBkcRHf" role="2Ry0An">
                <property role="2Ry0Am" value="org.itemis.world2d" />
                <node concept="2Ry0Ak" id="5sn4YBkcRHy" role="2Ry0An">
                  <property role="2Ry0Am" value="org.itemis.world2d.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5sn4YBkcRHK" role="3bR37C">
          <node concept="3bR9La" id="5sn4YBkcRHL" role="1SiIV1">
            <ref role="3bR37D" to="al5i:$bJ0jguQfr" resolve="com.mbeddr.core.base" />
          </node>
        </node>
        <node concept="1SiIV0" id="5sn4YBkcRHM" role="3bR37C">
          <node concept="3bR9La" id="5sn4YBkcRHN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5sn4YBkcRHO" role="3bR37C">
          <node concept="3bR9La" id="5sn4YBkcRHP" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="5sn4YBkcRHQ" role="3bR37C">
          <node concept="3bR9La" id="5sn4YBkcRHR" role="1SiIV1">
            <ref role="3bR37D" node="Ji$st3GiIB" resolve="org.itemis.phydev.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="5sn4YBkcRHX" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5sn4YBkcRHY" role="1HemKq">
            <node concept="398BVA" id="5sn4YBkcRHS" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="5sn4YBkcRHT" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="5sn4YBkcRHU" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5sn4YBkcRHV" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.world2d" />
                    <node concept="2Ry0Ak" id="5sn4YBkcRHW" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5sn4YBkcRHZ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5sn4YBkcRI0" role="3bR37C">
          <node concept="1Busua" id="5sn4YBkcRI1" role="1SiIV1">
            <ref role="1Busuk" to="al5i:$bJ0jguQfr" resolve="com.mbeddr.core.base" />
          </node>
        </node>
        <node concept="1yeLz9" id="5sn4YBkcRI2" role="1TViLv">
          <property role="TrG5h" value="org.itemis.world2d.generator" />
          <property role="3LESm3" value="8631d2e6-cdb1-49dd-84cf-e87de57f860c" />
          <node concept="1BupzO" id="5sn4YBkcRI9" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="5sn4YBkcRIa" role="1HemKq">
              <node concept="398BVA" id="5sn4YBkcRI3" role="3LXTmr">
                <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
                <node concept="2Ry0Ak" id="5sn4YBkcRI4" role="iGT6I">
                  <property role="2Ry0Am" value="code" />
                  <node concept="2Ry0Ak" id="5sn4YBkcRI5" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="5sn4YBkcRI6" role="2Ry0An">
                      <property role="2Ry0Am" value="org.itemis.world2d" />
                      <node concept="2Ry0Ak" id="5sn4YBkcRI7" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="5sn4YBkcRI8" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="5sn4YBkcRIb" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="5sn4YBkcRRK" role="1E1XAP">
          <ref role="1E0d5P" node="5sn4YBkcRKu" resolve="org.itemis.world2d.runtime" />
        </node>
        <node concept="3rtmxn" id="5sn4YBkcRSs" role="3bR31x">
          <node concept="3LXTmp" id="5sn4YBkcRSt" role="3rtmxm">
            <node concept="398BVA" id="5sn4YBkcRSu" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="5sn4YBkcRSv" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="5sn4YBkcRSw" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5sn4YBkcRSx" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.world2d" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5sn4YBkcRSz" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="koV6sN$Dzw" role="3bR37C">
          <node concept="1Busua" id="koV6sN$Dzx" role="1SiIV1">
            <ref role="1Busuk" to="ip48:5wLtKNeSRRB" resolve="org.iets3.core.base" />
          </node>
        </node>
        <node concept="1SiIV0" id="56ab_KnSP2S" role="3bR37C">
          <node concept="3bR9La" id="56ab_KnSP2T" role="1SiIV1">
            <ref role="3bR37D" to="90a9:29so9Vb$6Th" resolve="de.slisson.mps.tables" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3ZJK8lMfS2G" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.itemis.world2d.gen.json" />
        <property role="3LESm3" value="0b89126e-fd1d-40f2-89cd-e37f2025923b" />
        <node concept="398BVA" id="3ZJK8lMfS3G" role="3LF7KH">
          <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="3ZJK8lMfS3K" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="3ZJK8lMfS5N" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="3ZJK8lMfS5S" role="2Ry0An">
                <property role="2Ry0Am" value="org.itemis.world2d.gen.json" />
                <node concept="2Ry0Ak" id="3ZJK8lMfS5X" role="2Ry0An">
                  <property role="2Ry0Am" value="org.itemis.world2d.gen.json.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="3ZJK8lMfS5Z" role="3bR31x">
          <node concept="3LXTmp" id="3ZJK8lMfS60" role="3rtmxm">
            <node concept="398BVA" id="3ZJK8lMfS61" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="3ZJK8lMfS62" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="3ZJK8lMfS63" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3ZJK8lMfS64" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.world2d.gen.json" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZJK8lMfS66" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="3ZJK8lMfS6O" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3ZJK8lMfS6P" role="1HemKq">
            <node concept="398BVA" id="3ZJK8lMfS6J" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="3ZJK8lMfS6K" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="3ZJK8lMfS6L" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3ZJK8lMfS6M" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.world2d.gen.json" />
                    <node concept="2Ry0Ak" id="3ZJK8lMfS6N" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZJK8lMfS6Q" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="3ZJK8lMfS6R" role="1TViLv">
          <property role="TrG5h" value="org.itemis.world2d.gen.json.generator" />
          <property role="3LESm3" value="62e9de45-e6ba-4263-8946-c665259eabad" />
          <node concept="1SiIV0" id="3ZJK8lMfS6S" role="3bR37C">
            <node concept="3bR9La" id="3ZJK8lMfS6T" role="1SiIV1">
              <ref role="3bR37D" node="3ZJK8lMfyOb" resolve="org.itemis.phydev.gen.world2d" />
            </node>
          </node>
          <node concept="1SiIV0" id="3ZJK8lMfS6U" role="3bR37C">
            <node concept="3bR9La" id="3ZJK8lMfS6V" role="1SiIV1">
              <ref role="3bR37D" to="al5i:6o5cjw5gEyi" resolve="com.mbeddr.mpsutil.json" />
            </node>
          </node>
          <node concept="1SiIV0" id="3ZJK8lMfS6W" role="3bR37C">
            <node concept="3bR9La" id="3ZJK8lMfS6X" role="1SiIV1">
              <ref role="3bR37D" node="5sn4YBkcRFW" resolve="org.itemis.world2d" />
            </node>
          </node>
          <node concept="1BupzO" id="3ZJK8lMfS74" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3ZJK8lMfS75" role="1HemKq">
              <node concept="398BVA" id="3ZJK8lMfS6Y" role="3LXTmr">
                <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
                <node concept="2Ry0Ak" id="3ZJK8lMfS6Z" role="iGT6I">
                  <property role="2Ry0Am" value="code" />
                  <node concept="2Ry0Ak" id="3ZJK8lMfS70" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="3ZJK8lMfS71" role="2Ry0An">
                      <property role="2Ry0Am" value="org.itemis.world2d.gen.json" />
                      <node concept="2Ry0Ak" id="3ZJK8lMfS72" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="3ZJK8lMfS73" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3ZJK8lMfS76" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="Ji$st3FDQm" role="3989C9">
      <property role="TrG5h" value="phydev" />
      <node concept="1E1JtA" id="Ji$st3GiIB" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.itemis.phydev.runtime" />
        <property role="3LESm3" value="856b26ba-05ad-49b3-8b5b-d034f8f7a4a0" />
        <node concept="398BVA" id="Ji$st3GiIH" role="3LF7KH">
          <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="Ji$st3GiIN" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="Ji$st3GiIX" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="Ji$st3GiJ2" role="2Ry0An">
                <property role="2Ry0Am" value="org.itemis.phydev" />
                <node concept="2Ry0Ak" id="Ji$st3GiJ7" role="2Ry0An">
                  <property role="2Ry0Am" value="runtime" />
                  <node concept="2Ry0Ak" id="Ji$st3GiJc" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev.runtime.msd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiJe" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiJf" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiJn" role="3bR37C">
          <node concept="1BurEX" id="Ji$st3GiJo" role="1SiIV1">
            <node concept="398BVA" id="Ji$st3GiJg" role="1BurEY">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="Ji$st3GiJh" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="Ji$st3GiJi" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="Ji$st3GiJj" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev" />
                    <node concept="2Ry0Ak" id="Ji$st3GiJk" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime" />
                      <node concept="2Ry0Ak" id="Ji$st3GiJl" role="2Ry0An">
                        <property role="2Ry0Am" value="libs" />
                        <node concept="2Ry0Ak" id="Ji$st3GiJm" role="2Ry0An">
                          <property role="2Ry0Am" value="jbox2d-library-2.3.1-SNAPSHOT.jar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="Ji$st3GiJv" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="Ji$st3GiJw" role="1HemKq">
            <node concept="398BVA" id="Ji$st3GiJp" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="Ji$st3GiJq" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="Ji$st3GiJr" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="Ji$st3GiJs" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev" />
                    <node concept="2Ry0Ak" id="Ji$st3GiJt" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime" />
                      <node concept="2Ry0Ak" id="Ji$st3GiJu" role="2Ry0An">
                        <property role="2Ry0Am" value="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="Ji$st3GiJx" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="Ji$st3GiRo" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.itemis.phydev.plugin" />
        <property role="3LESm3" value="552ddae7-173a-41b2-8758-b576a7f7a851" />
        <node concept="398BVA" id="Ji$st3GiSJ" role="3LF7KH">
          <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="Ji$st3GiT3" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="Ji$st3GiTf" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="Ji$st3GiTy" role="2Ry0An">
                <property role="2Ry0Am" value="org.itemis.phydev.plugin" />
                <node concept="2Ry0Ak" id="Ji$st3GiTP" role="2Ry0An">
                  <property role="2Ry0Am" value="org.itemis.phydev.plugin.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiUb" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiUc" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiUd" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiUe" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiUf" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiUg" role="1SiIV1">
            <ref role="3bR37D" node="Ji$st3GiIB" resolve="org.itemis.phydev.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiUh" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiUi" role="1SiIV1">
            <ref role="3bR37D" node="Ji$st3GiLU" resolve="org.itemis.phydev" />
          </node>
        </node>
        <node concept="1BupzO" id="Ji$st3GiUo" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="Ji$st3GiUp" role="1HemKq">
            <node concept="398BVA" id="Ji$st3GiUj" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="Ji$st3GiUk" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="Ji$st3GiUl" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="Ji$st3GiUm" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev.plugin" />
                    <node concept="2Ry0Ak" id="Ji$st3GiUn" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="Ji$st3GiUq" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5sn4YBkcRQd" role="3bR37C">
          <node concept="3bR9La" id="5sn4YBkcRQe" role="1SiIV1">
            <ref role="3bR37D" node="5sn4YBkcRFW" resolve="org.itemis.world2d" />
          </node>
        </node>
        <node concept="1SiIV0" id="pX_ysx3Xri" role="3bR37C">
          <node concept="3bR9La" id="pX_ysx3Xrj" role="1SiIV1">
            <ref role="3bR37D" to="ip48:5wLtKNeSRPD" resolve="org.iets3.core.expr.base" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="Ji$st3GiLU" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.itemis.phydev" />
        <property role="3LESm3" value="769783b6-17f4-40a3-bdc7-88b8332300f2" />
        <node concept="398BVA" id="Ji$st3GiMy" role="3LF7KH">
          <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="Ji$st3GiMQ" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="Ji$st3GiN9" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="Ji$st3GiNs" role="2Ry0An">
                <property role="2Ry0Am" value="org.itemis.phydev" />
                <node concept="2Ry0Ak" id="Ji$st3GiNJ" role="2Ry0An">
                  <property role="2Ry0Am" value="org.itemis.phydev.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiO7" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiO8" role="1SiIV1">
            <ref role="3bR37D" to="al5i:$bJ0jguQfr" resolve="com.mbeddr.core.base" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiO9" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiOa" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiOb" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiOc" role="1SiIV1">
            <ref role="3bR37D" to="ip48:4C_RnzfEE1P" resolve="org.iets3.core.expr.base.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiOd" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiOe" role="1SiIV1">
            <ref role="3bR37D" to="ip48:5wLtKNeSRQd" resolve="org.iets3.core.expr.simpleTypes" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiOh" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiOi" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiOj" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiOk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiOl" role="3bR37C">
          <node concept="3bR9La" id="Ji$st3GiOm" role="1SiIV1">
            <ref role="3bR37D" node="Ji$st3GiIB" resolve="org.itemis.phydev.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="Ji$st3GiOs" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="Ji$st3GiOt" role="1HemKq">
            <node concept="398BVA" id="Ji$st3GiOn" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="Ji$st3GiOo" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="Ji$st3GiOp" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="Ji$st3GiOq" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev" />
                    <node concept="2Ry0Ak" id="Ji$st3GiOr" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="Ji$st3GiOu" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="Ji$st3GiOv" role="1E1XAP">
          <ref role="1E0d5P" node="Ji$st3GiIB" resolve="org.itemis.phydev.runtime" />
        </node>
        <node concept="1SiIV0" id="Ji$st3GiOw" role="3bR37C">
          <node concept="1Busua" id="Ji$st3GiOx" role="1SiIV1">
            <ref role="1Busuk" to="ip48:5wLtKNeSRPD" resolve="org.iets3.core.expr.base" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ji$st3GiOy" role="3bR37C">
          <node concept="1Busua" id="Ji$st3GiOz" role="1SiIV1">
            <ref role="1Busuk" to="ip48:49WTic8jAD5" resolve="org.iets3.core.expr.lambda" />
          </node>
        </node>
        <node concept="1yeLz9" id="Ji$st3GiO$" role="1TViLv">
          <property role="TrG5h" value="org.itemis.phydev#01" />
          <property role="3LESm3" value="6b397f38-183c-4dde-bae3-a5468787cfc3" />
          <node concept="1BupzO" id="Ji$st3GiOF" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="Ji$st3GiOG" role="1HemKq">
              <node concept="398BVA" id="Ji$st3GiO_" role="3LXTmr">
                <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
                <node concept="2Ry0Ak" id="Ji$st3GiOA" role="iGT6I">
                  <property role="2Ry0Am" value="code" />
                  <node concept="2Ry0Ak" id="Ji$st3GiOB" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="Ji$st3GiOC" role="2Ry0An">
                      <property role="2Ry0Am" value="org.itemis.phydev" />
                      <node concept="2Ry0Ak" id="Ji$st3GiOD" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="Ji$st3GiOE" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="Ji$st3GiOH" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="Ji$st3HkCa" role="3bR31x">
          <node concept="3LXTmp" id="Ji$st3HkCb" role="3rtmxm">
            <node concept="398BVA" id="Ji$st3HkCc" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="Ji$st3HkCd" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="Ji$st3HkCe" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="Ji$st3HkCf" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="Ji$st3HkCh" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5sn4YBkcRQk" role="3bR37C">
          <node concept="3bR9La" id="5sn4YBkcRQl" role="1SiIV1">
            <ref role="3bR37D" node="5sn4YBkcRFW" resolve="org.itemis.world2d" />
          </node>
        </node>
        <node concept="1SiIV0" id="pX_yswHPpr" role="3bR37C">
          <node concept="3bR9La" id="pX_yswHPps" role="1SiIV1">
            <ref role="3bR37D" to="90a9:PE3B26QCrP" resolve="org.apache.commons" />
          </node>
        </node>
        <node concept="1SiIV0" id="pX_yswZNTw" role="3bR37C">
          <node concept="3bR9La" id="pX_yswZNTx" role="1SiIV1">
            <ref role="3bR37D" to="ip48:5wLtKNeSRPD" resolve="org.iets3.core.expr.base" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Ar3EGnfR4e" role="3bR37C">
          <node concept="3bR9La" id="2Ar3EGnfR4f" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3ZJK8lMfhuw" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.itemis.phydev.gen.html" />
        <property role="3LESm3" value="d9bfe14c-f389-4e27-be1b-5c11336c3fe5" />
        <node concept="398BVA" id="3ZJK8lMfhwd" role="3LF7KH">
          <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="3ZJK8lMfhwh" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="3ZJK8lMfhwm" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="3ZJK8lMfhwr" role="2Ry0An">
                <property role="2Ry0Am" value="org.itemis.phydev.gen.html" />
                <node concept="2Ry0Ak" id="3ZJK8lMfhww" role="2Ry0An">
                  <property role="2Ry0Am" value="org.itemis.phydev.gen.html.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="3ZJK8lMfhwy" role="3bR31x">
          <node concept="3LXTmp" id="3ZJK8lMfhwz" role="3rtmxm">
            <node concept="398BVA" id="3ZJK8lMfhw$" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="3ZJK8lMfhw_" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="3ZJK8lMfhwA" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3ZJK8lMfhwB" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev.gen.html" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZJK8lMfhwD" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="3ZJK8lMfhxO" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3ZJK8lMfhxP" role="1HemKq">
            <node concept="398BVA" id="3ZJK8lMfhxJ" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="3ZJK8lMfhxK" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="3ZJK8lMfhxL" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3ZJK8lMfhxM" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev.gen.html" />
                    <node concept="2Ry0Ak" id="3ZJK8lMfhxN" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZJK8lMfhxQ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="3ZJK8lMfhxR" role="1TViLv">
          <property role="TrG5h" value="org.itemis.phydev.gen.html.generator" />
          <property role="3LESm3" value="d1e8dd11-0055-40f9-aa15-0f31095436f3" />
          <node concept="1SiIV0" id="3ZJK8lMfhxS" role="3bR37C">
            <node concept="3bR9La" id="3ZJK8lMfhxT" role="1SiIV1">
              <ref role="3bR37D" to="90a9:PE3B26QCrP" resolve="org.apache.commons" />
            </node>
          </node>
          <node concept="1SiIV0" id="3ZJK8lMfhxY" role="3bR37C">
            <node concept="3bR9La" id="3ZJK8lMfhxZ" role="1SiIV1">
              <ref role="3bR37D" node="Ji$st3GiLU" resolve="org.itemis.phydev" />
            </node>
          </node>
          <node concept="1BupzO" id="3ZJK8lMfhy6" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3ZJK8lMfhy7" role="1HemKq">
              <node concept="398BVA" id="3ZJK8lMfhy0" role="3LXTmr">
                <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
                <node concept="2Ry0Ak" id="3ZJK8lMfhy1" role="iGT6I">
                  <property role="2Ry0Am" value="code" />
                  <node concept="2Ry0Ak" id="3ZJK8lMfhy2" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="3ZJK8lMfhy3" role="2Ry0An">
                      <property role="2Ry0Am" value="org.itemis.phydev.gen.html" />
                      <node concept="2Ry0Ak" id="3ZJK8lMfhy4" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="3ZJK8lMfhy5" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3ZJK8lMfhy8" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3ZJK8lMfyOb" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.itemis.phydev.gen.world2d" />
        <property role="3LESm3" value="9c2cbfd0-a0c8-4ef8-a53b-eb33dfc9b0f0" />
        <node concept="398BVA" id="3ZJK8lMfyQv" role="3LF7KH">
          <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="3ZJK8lMfyQz" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="3ZJK8lMfyQF" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="3ZJK8lMfyQK" role="2Ry0An">
                <property role="2Ry0Am" value="org.itemis.phydev.gen.world2d" />
                <node concept="2Ry0Ak" id="3ZJK8lMfyQP" role="2Ry0An">
                  <property role="2Ry0Am" value="org.itemis.phydev.gen.world2d.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="3ZJK8lMfyQR" role="3bR31x">
          <node concept="3LXTmp" id="3ZJK8lMfyQS" role="3rtmxm">
            <node concept="398BVA" id="3ZJK8lMfyQT" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="3ZJK8lMfyQU" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="3ZJK8lMfyQV" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3ZJK8lMfyQW" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev.gen.world2d" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZJK8lMfyQY" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="3ZJK8lMfySk" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3ZJK8lMfySl" role="1HemKq">
            <node concept="398BVA" id="3ZJK8lMfySf" role="3LXTmr">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="3ZJK8lMfySg" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="3ZJK8lMfySh" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3ZJK8lMfySi" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev.gen.world2d" />
                    <node concept="2Ry0Ak" id="3ZJK8lMfySj" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3ZJK8lMfySm" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="3ZJK8lMfySn" role="1TViLv">
          <property role="TrG5h" value="org.itemis.phydev.gen.world2d.generator" />
          <property role="3LESm3" value="5eb88c59-7c7c-461c-bd9e-520b228199ae" />
          <node concept="1SiIV0" id="3ZJK8lMfySo" role="3bR37C">
            <node concept="3bR9La" id="3ZJK8lMfySp" role="1SiIV1">
              <ref role="3bR37D" node="5sn4YBkcRFW" resolve="org.itemis.world2d" />
            </node>
          </node>
          <node concept="1SiIV0" id="3ZJK8lMfySq" role="3bR37C">
            <node concept="3bR9La" id="3ZJK8lMfySr" role="1SiIV1">
              <ref role="3bR37D" node="Ji$st3GiLU" resolve="org.itemis.phydev" />
            </node>
          </node>
          <node concept="1BupzO" id="3ZJK8lMfySy" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3ZJK8lMfySz" role="1HemKq">
              <node concept="398BVA" id="3ZJK8lMfySs" role="3LXTmr">
                <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
                <node concept="2Ry0Ak" id="3ZJK8lMfySt" role="iGT6I">
                  <property role="2Ry0Am" value="code" />
                  <node concept="2Ry0Ak" id="3ZJK8lMfySu" role="2Ry0An">
                    <property role="2Ry0Am" value="languages" />
                    <node concept="2Ry0Ak" id="3ZJK8lMfySv" role="2Ry0An">
                      <property role="2Ry0Am" value="org.itemis.phydev.gen.world2d" />
                      <node concept="2Ry0Ak" id="3ZJK8lMfySw" role="2Ry0An">
                        <property role="2Ry0Am" value="generator" />
                        <node concept="2Ry0Ak" id="3ZJK8lMfySx" role="2Ry0An">
                          <property role="2Ry0Am" value="templates" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3ZJK8lMfyS$" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5wLtKNeSRPp" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5wLtKNeSRPq" role="2JcizS">
        <ref role="398BVh" node="6uyzASnqGPb" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="jS_CvxPMqM" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="jS_CvxPMrd" role="2JcizS">
        <ref role="398BVh" node="6uyzASnqGPL" resolve="dependencies.root" />
        <node concept="2Ry0Ak" id="6uyzASnqGQM" role="iGT6I">
          <property role="2Ry0Am" value="com.mbeddr.platform" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="jS_CvxPGKG" role="1l3spa">
      <ref role="1l3spb" to="ip48:5wLtKNeSRPl" resolve="org.iets3.opensource" />
      <node concept="398BVA" id="jS_CvxPGLW" role="2JcizS">
        <ref role="398BVh" node="6uyzASnqGPL" resolve="dependencies.root" />
        <node concept="2Ry0Ak" id="jS_CvxPGUJ" role="iGT6I">
          <property role="2Ry0Am" value="org.iets3.opensource" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="6s9oz3GUFvh" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
      <node concept="398BVA" id="6s9oz3GUFvi" role="2JcizS">
        <ref role="398BVh" node="6uyzASnqGPL" resolve="dependencies.root" />
        <node concept="2Ry0Ak" id="6s9oz3GUFvj" role="iGT6I">
          <property role="2Ry0Am" value="com.mbeddr.platform" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6uyzASnqGGh" role="1l3spd">
      <property role="TrG5h" value="phydev.home" />
      <node concept="55IIr" id="1Y5vs7yKdTn" role="398pKh">
        <node concept="2Ry0Ak" id="1Y5vs7yKdT$" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="1Y5vs7yKdTX" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6uyzASnqGPb" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="398BVA" id="6uyzASnqGPi" role="398pKh">
        <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
        <node concept="2Ry0Ak" id="6uyzASnqGPl" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="6uyzASnqGPo" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6uyzASnqGPL" role="1l3spd">
      <property role="TrG5h" value="dependencies.root" />
      <node concept="398BVA" id="6uyzASnqGPW" role="398pKh">
        <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
        <node concept="2Ry0Ak" id="6uyzASnqGQ1" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="6uyzASnqGQ6" role="2Ry0An">
            <property role="2Ry0Am" value="dependencies" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="6uyzASnqGG5" role="10PD9s" />
    <node concept="3b7kt6" id="6uyzASnqGGb" role="10PD9s" />
    <node concept="55IIr" id="6uyzASnqGG1" role="auvoZ" />
    <node concept="1l3spV" id="6uyzASnqGG2" role="1l3spN">
      <node concept="m$_wl" id="Ji$st3HsMt" role="39821P">
        <ref role="m_rDy" node="Ji$st3HsJo" resolve="org.itemis.phydev" />
        <node concept="pUk6x" id="Ji$st3HsMN" role="pUk7w" />
      </node>
      <node concept="m$_wl" id="Ji$st3HnTv" role="39821P">
        <ref role="m_rDy" node="Ji$st3HnNn" resolve="org.itemis.phydev.build" />
        <node concept="398223" id="Ji$st3HAo5" role="39821P">
          <node concept="28jJK3" id="Ji$st3HAot" role="39821P">
            <node concept="398BVA" id="Ji$st3HAoE" role="28jJRO">
              <ref role="398BVh" node="6uyzASnqGGh" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="Ji$st3HAoP" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="Ji$st3HAoU" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="Ji$st3HAoZ" role="2Ry0An">
                    <property role="2Ry0Am" value="org.itemis.phydev" />
                    <node concept="2Ry0Ak" id="Ji$st3HAp4" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime" />
                      <node concept="2Ry0Ak" id="Ji$st3HAp9" role="2Ry0An">
                        <property role="2Ry0Am" value="libs" />
                        <node concept="2Ry0Ak" id="Ji$st3HApe" role="2Ry0An">
                          <property role="2Ry0Am" value="jbox2d-library-2.3.1-SNAPSHOT.jar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="Ji$st3HAo7" role="Nbhlr">
            <node concept="3Mxwew" id="Ji$st3HAoi" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
        </node>
        <node concept="pUk6x" id="Ji$st3HnTN" role="pUk7w" />
      </node>
    </node>
    <node concept="2igEWh" id="Ji$st3HApE" role="1hWBAP">
      <property role="3UIfUI" value="4096" />
    </node>
  </node>
  <node concept="1l3spW" id="5sn4YBkhr8a">
    <property role="2DA0ip" value="./../../../build/scripts" />
    <property role="TrG5h" value="org.itemis.phydev.test" />
    <property role="turDy" value="build-test.xml" />
    <node concept="2igEWh" id="5sn4YBkhsUO" role="1hWBAP">
      <property role="3UIfUI" value="6096" />
    </node>
    <node concept="22LTRH" id="5sn4YBkhsWP" role="1hWBAP">
      <property role="TrG5h" value="test.org.itemis.phydev" />
      <node concept="22LTRM" id="5sn4YBkht0J" role="22LTRK">
        <ref role="22LTRN" node="5sn4YBkhsM9" resolve="test.org.itemis.phydev.dummy" />
      </node>
      <node concept="24cAiW" id="5sn4YBkht2G" role="24cAkG">
        <node concept="NbPM2" id="5sn4YBkht2J" role="24c_eh">
          <node concept="3Mxwew" id="5sn4YBkht2I" role="3MwsjC">
            <property role="3MwjfP" value="false" />
          </node>
        </node>
        <node concept="NbPM2" id="5sn4YBkht4I" role="XX84c">
          <node concept="3Mxwew" id="5sn4YBkht4H" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1wNqPr" id="2B1T7v1mRQy" role="3989C9">
      <property role="1wNuhc" value="true" />
      <property role="1wNuhe" value="true" />
      <property role="1wNuhh" value="8" />
      <property role="1wOHq$" value="true" />
      <property role="3Ej$Sc" value="true" />
    </node>
    <node concept="2_Ic$z" id="2tUvrc9VMMN" role="3989C9">
      <property role="2_GNG2" value="2048" />
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
    </node>
    <node concept="2G$12M" id="5sn4YBkhsM4" role="3989C9">
      <property role="TrG5h" value="test.org.itemis.phydev" />
      <node concept="1E1JtA" id="5sn4YBkhsM9" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="test.org.itemis.phydev.dummy" />
        <property role="3LESm3" value="be85a5ff-e3d1-4cad-8c93-8332efdbecd4" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="398BVA" id="5sn4YBkhsMd" role="3LF7KH">
          <ref role="398BVh" node="5sn4YBkhrz4" resolve="phydev.home" />
          <node concept="2Ry0Ak" id="5sn4YBkhsMj" role="iGT6I">
            <property role="2Ry0Am" value="code" />
            <node concept="2Ry0Ak" id="5sn4YBkhsMo" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="5sn4YBkhsMt" role="2Ry0An">
                <property role="2Ry0Am" value="test.org.itemis.phydev.dummy" />
                <node concept="2Ry0Ak" id="2OVIZqykHXh" role="2Ry0An">
                  <property role="2Ry0Am" value="test.org.itemis.phydev.dummy.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="5sn4YBkhsMD" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2OVIZqykHXt" role="1HemKq">
            <node concept="398BVA" id="2OVIZqykHXj" role="3LXTmr">
              <ref role="398BVh" node="5sn4YBkhrz4" resolve="phydev.home" />
              <node concept="2Ry0Ak" id="2OVIZqykHXk" role="iGT6I">
                <property role="2Ry0Am" value="code" />
                <node concept="2Ry0Ak" id="2OVIZqykHXl" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="2OVIZqykHXm" role="2Ry0An">
                    <property role="2Ry0Am" value="test.org.itemis.phydev.dummy" />
                    <node concept="2Ry0Ak" id="2OVIZqykHXn" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2OVIZqykHXu" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5sn4YBkhrzs" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5sn4YBkhrzt" role="2JcizS">
        <ref role="398BVh" node="5sn4YBkhrz8" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="pX_yswPQga" role="1l3spa">
      <ref role="1l3spb" node="6uyzASnqGG0" resolve="org.itemis.phydev.build" />
      <node concept="398BVA" id="pX_yswPQgb" role="2JcizS">
        <ref role="398BVh" node="1PCOxygkit5" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="5VGitJiENkT" role="iGT6I">
          <property role="2Ry0Am" value="org.itemis.phydev.build" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5sn4YBkhrzu" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="5sn4YBkhrzv" role="2JcizS">
        <ref role="398BVh" node="5sn4YBkhrzc" resolve="dependencies.root" />
        <node concept="2Ry0Ak" id="5sn4YBkhrzw" role="iGT6I">
          <property role="2Ry0Am" value="com.mbeddr.platform" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5sn4YBkhrzx" role="1l3spa">
      <ref role="1l3spb" to="ip48:5wLtKNeSRPl" resolve="org.iets3.opensource" />
      <node concept="398BVA" id="5sn4YBkhrzy" role="2JcizS">
        <ref role="398BVh" node="5sn4YBkhrzc" resolve="dependencies.root" />
        <node concept="2Ry0Ak" id="5sn4YBkhrzz" role="iGT6I">
          <property role="2Ry0Am" value="org.iets3.opensource" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5sn4YBkhrz4" role="1l3spd">
      <property role="TrG5h" value="phydev.home" />
      <node concept="55IIr" id="5sn4YBkhrz5" role="398pKh">
        <node concept="2Ry0Ak" id="5sn4YBkhrz6" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="5sn4YBkhrz7" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5sn4YBkhF7e" role="1l3spd">
      <property role="TrG5h" value="mps.macro.phydev.home" />
      <node concept="398BVA" id="5sn4YBkhFjb" role="398pKh">
        <ref role="398BVh" node="5sn4YBkhrz4" resolve="phydev.home" />
      </node>
    </node>
    <node concept="398rNT" id="5sn4YBkhrz8" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="398BVA" id="5sn4YBkhrz9" role="398pKh">
        <ref role="398BVh" node="5sn4YBkhrz4" resolve="phydev.home" />
        <node concept="2Ry0Ak" id="5sn4YBkhrza" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="5sn4YBkhrzb" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5sn4YBkhrzc" role="1l3spd">
      <property role="TrG5h" value="dependencies.root" />
      <node concept="398BVA" id="5sn4YBkhrzd" role="398pKh">
        <ref role="398BVh" node="5sn4YBkhrz4" resolve="phydev.home" />
        <node concept="2Ry0Ak" id="5sn4YBkhrze" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="5sn4YBkhrzf" role="2Ry0An">
            <property role="2Ry0Am" value="dependencies" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1PCOxygkit5" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="398BVA" id="1PCOxygkit6" role="398pKh">
        <ref role="398BVh" node="5sn4YBkhrz4" resolve="phydev.home" />
        <node concept="2Ry0Ak" id="1PCOxygkit7" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="5VGitJiENkR" role="2Ry0An">
            <property role="2Ry0Am" value="artifacts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3b7kt6" id="5sn4YBkhraa" role="10PD9s" />
    <node concept="10PD9b" id="5sn4YBkhrag" role="10PD9s" />
    <node concept="1gjT0q" id="5sn4YBkhrwX" role="10PD9s" />
    <node concept="55IIr" id="5sn4YBkhr8b" role="auvoZ" />
    <node concept="1l3spV" id="5sn4YBkhr8c" role="1l3spN">
      <node concept="L2wRC" id="5sn4YBkhsSO" role="39821P">
        <ref role="L2wRA" node="5sn4YBkhsM9" resolve="test.org.itemis.phydev.dummy" />
      </node>
    </node>
  </node>
</model>

