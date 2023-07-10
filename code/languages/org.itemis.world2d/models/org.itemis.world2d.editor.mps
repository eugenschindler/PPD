<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cb7d1725-c115-44a9-891d-fc5de0f6a732(org.itemis.world2d.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="2" />
    <use id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="itrz" ref="r:80fb0853-eb3b-4e84-aebd-cc7fdb011d97(org.iets3.core.base.editor)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="wfa7" ref="r:5cbb99b3-109d-41a0-9f3d-5c45b7d64709(org.itemis.world2d.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells">
      <concept id="9041925471455857605" name="com.mbeddr.mpsutil.grammarcells.structure.Cell_DescriptionText" flags="ig" index="uPpia" />
      <concept id="848437706375087728" name="com.mbeddr.mpsutil.grammarcells.structure.ICanHaveDescriptionText" flags="ng" index="1djCvD">
        <child id="848437706375087729" name="descriptionText" index="1djCvC" />
      </concept>
      <concept id="7363578995839203705" name="com.mbeddr.mpsutil.grammarcells.structure.FlagCell" flags="sg" stub="1984422498400729024" index="1kHk_G">
        <property id="7617962380315063287" name="flagText" index="ZjSer" />
        <property id="8224407690718723337" name="doNotGenerateNodeSubstituteAction" index="ZpkCL" />
      </concept>
    </language>
    <language id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables">
      <concept id="1397920687865593407" name="de.slisson.mps.tables.structure.PartialTable" flags="ng" index="2r0Tta">
        <child id="1397920687865593523" name="cells" index="2r0Tv6" />
      </concept>
      <concept id="1397920687864997170" name="de.slisson.mps.tables.structure.TableNodeCollection" flags="ng" index="2reCL7">
        <child id="1397920687864997171" name="childTableNodes" index="2reCL6" />
      </concept>
      <concept id="1397920687864997153" name="de.slisson.mps.tables.structure.StaticHorizontal" flags="ng" index="2reCLk" />
      <concept id="1397920687864997143" name="de.slisson.mps.tables.structure.TableCell" flags="ng" index="2reCLy">
        <child id="1397920687865111420" name="columnHeader" index="2recC9" />
        <child id="1397920687865064647" name="editorCell" index="2reSmM" />
      </concept>
      <concept id="1397920687865064415" name="de.slisson.mps.tables.structure.ChildsVertical" flags="ng" index="2reSaE" />
      <concept id="1397920687865064509" name="de.slisson.mps.tables.structure.ChildCollection" flags="ng" index="2reSl8">
        <reference id="1397920687864997201" name="linkDeclaration" index="2reCK$" />
      </concept>
      <concept id="1397920687864864270" name="de.slisson.mps.tables.structure.StaticHeader" flags="ng" index="2rfbtV">
        <property id="1397920687864864274" name="text" index="2rfbtB" />
      </concept>
      <concept id="1397920687864683158" name="de.slisson.mps.tables.structure.Table" flags="ng" index="2rfBfz">
        <child id="1397920687864865354" name="cells" index="2rf8GZ" />
      </concept>
      <concept id="5662204344885760731" name="de.slisson.mps.tables.structure.IStylable" flags="ng" index="1g0I81">
        <child id="5662204344887343006" name="style" index="1geGt4" />
      </concept>
      <concept id="5662204344885763446" name="de.slisson.mps.tables.structure.TableStyle" flags="ng" index="1g0IQG" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="6Asc$CvgZZh">
    <property role="3GE5qa" value="textual" />
    <ref role="1XX52x" to="wfa7:6Asc$CvgZXX" resolve="World2D" />
    <node concept="3EZMnI" id="6Asc$CvgZZj" role="2wV5jI">
      <node concept="2iRkQZ" id="6Asc$CvgZZm" role="2iSdaV" />
      <node concept="PMmxH" id="56ab_KnSP$n" role="3EZMnx">
        <ref role="PMmxG" node="56ab_KnSPzO" resolve="World2DHeaderEditorComponent" />
      </node>
      <node concept="3F2HdR" id="6Asc$CvgZZX" role="3EZMnx">
        <ref role="1NtTu8" to="wfa7:6Asc$CvgZZf" resolve="elements" />
        <node concept="2iRkQZ" id="6Asc$CvgZZZ" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6Asc$Cvh00g">
    <property role="3GE5qa" value="textual" />
    <ref role="1XX52x" to="wfa7:6Asc$Cvh008" resolve="Box2D" />
    <node concept="3EZMnI" id="6Asc$Cvhjpj" role="2wV5jI">
      <node concept="2iRkQZ" id="6Asc$Cvhjpk" role="2iSdaV" />
      <node concept="3EZMnI" id="6Asc$Cvh00i" role="3EZMnx">
        <node concept="1kHk_G" id="3WWvqarUGzs" role="3EZMnx">
          <property role="ZpkCL" value="true" />
          <property role="ZjSer" value="fixed" />
          <ref role="1NtTu8" to="wfa7:6Asc$Cvhvhp" resolve="isFixed" />
          <node concept="VechU" id="2Ar3EGnhlaI" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
          <node concept="uPpia" id="1ZlHRbghbpm" role="1djCvC">
            <node concept="3clFbS" id="1ZlHRbghbpn" role="2VODD2">
              <node concept="3clFbF" id="1ZlHRbghbpH" role="3cqZAp">
                <node concept="Xl_RD" id="1sNMMH7wOS5" role="3clFbG">
                  <property role="Xl_RC" value="fixed" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="PMmxH" id="6Asc$CvhvG1" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        </node>
        <node concept="2iRfu4" id="6Asc$Cvh00l" role="2iSdaV" />
        <node concept="3F0A7n" id="6Asc$Cvh00v" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="6Asc$Cvhjpz" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
      </node>
      <node concept="3EZMnI" id="6Asc$CvhjpR" role="3EZMnx">
        <node concept="VPM3Z" id="6Asc$CvhjpT" role="3F10Kt" />
        <node concept="3XFhqQ" id="6Asc$Cvhjq7" role="3EZMnx" />
        <node concept="2iRfu4" id="6Asc$CvhjpW" role="2iSdaV" />
        <node concept="3EZMnI" id="6Asc$Cvhjqh" role="3EZMnx">
          <node concept="VPM3Z" id="6Asc$Cvhjqj" role="3F10Kt" />
          <node concept="3EZMnI" id="6Asc$Cvhjqv" role="3EZMnx">
            <node concept="VPM3Z" id="6Asc$Cvhjqx" role="3F10Kt" />
            <node concept="3F0ifn" id="6Asc$Cvhjqz" role="3EZMnx">
              <property role="3F0ifm" value="position" />
            </node>
            <node concept="3F1sOY" id="6At7l0LXWLW" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6At7l0LXWGq" resolve="position" />
            </node>
            <node concept="2iRfu4" id="6Asc$Cvhjq$" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="6Asc$CvhjqQ" role="3EZMnx">
            <node concept="VPM3Z" id="6Asc$CvhjqR" role="3F10Kt" />
            <node concept="3F0ifn" id="6Asc$CvhjqS" role="3EZMnx">
              <property role="3F0ifm" value="size" />
            </node>
            <node concept="2iRfu4" id="6Asc$CvhjqT" role="2iSdaV" />
            <node concept="3EZMnI" id="6At7l0M49jw" role="3EZMnx">
              <node concept="2iRfu4" id="6At7l0M49jx" role="2iSdaV" />
              <node concept="3F0A7n" id="6Asc$CvhjqU" role="3EZMnx">
                <ref role="1NtTu8" to="wfa7:6Asc$Cvhcuy" resolve="_width" />
              </node>
              <node concept="3F0ifn" id="6Asc$Cvhjtb" role="3EZMnx">
                <property role="3F0ifm" value="x" />
              </node>
              <node concept="3F0A7n" id="6Asc$Cvhjtl" role="3EZMnx">
                <ref role="1NtTu8" to="wfa7:6Asc$Cvhcu$" resolve="_height" />
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="6Asc$Cvhjr5" role="3EZMnx">
            <node concept="VPM3Z" id="6Asc$Cvhjr6" role="3F10Kt" />
            <node concept="3F0ifn" id="6Asc$Cvhjr7" role="3EZMnx">
              <property role="3F0ifm" value="angle" />
            </node>
            <node concept="2iRfu4" id="6Asc$Cvhjr8" role="2iSdaV" />
            <node concept="3F0A7n" id="6Asc$Cvhjr9" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6Asc$Cvhcuo" resolve="angle" />
            </node>
          </node>
          <node concept="3EZMnI" id="6Asc$Cvhjrp" role="3EZMnx">
            <node concept="VPM3Z" id="6Asc$Cvhjrq" role="3F10Kt" />
            <node concept="3F0ifn" id="6Asc$Cvhjrr" role="3EZMnx">
              <property role="3F0ifm" value="density" />
            </node>
            <node concept="2iRfu4" id="6Asc$Cvhjrs" role="2iSdaV" />
            <node concept="3F0A7n" id="6Asc$Cvhjrt" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6Asc$Cvhvvt" resolve="density" />
            </node>
          </node>
          <node concept="3EZMnI" id="6Asc$Cvhjsg" role="3EZMnx">
            <node concept="VPM3Z" id="6Asc$Cvhjsh" role="3F10Kt" />
            <node concept="3F0ifn" id="6Asc$Cvhjsi" role="3EZMnx">
              <property role="3F0ifm" value="collision-aware?" />
            </node>
            <node concept="2iRfu4" id="6Asc$Cvhjsj" role="2iSdaV" />
            <node concept="3F0A7n" id="6Asc$Cvhjsk" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6Asc$CvhhpZ" resolve="withCollisions" />
            </node>
          </node>
          <node concept="3EZMnI" id="16PkDIvfOkd" role="3EZMnx">
            <node concept="VPM3Z" id="16PkDIvfOke" role="3F10Kt" />
            <node concept="3F0ifn" id="16PkDIvfOkf" role="3EZMnx">
              <property role="3F0ifm" value="isPoint?" />
            </node>
            <node concept="2iRfu4" id="16PkDIvfOkg" role="2iSdaV" />
            <node concept="3F0A7n" id="16PkDIvfOkh" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:16PkDIvfJHJ" resolve="isPoint" />
            </node>
          </node>
          <node concept="2EHx9g" id="6Asc$Cvhjqs" role="2iSdaV" />
        </node>
      </node>
      <node concept="3F0ifn" id="6Asc$CvhjpC" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6Asc$Cvhvvx">
    <property role="3GE5qa" value="textual" />
    <ref role="1XX52x" to="wfa7:6Asc$CvhtLu" resolve="Circle2D" />
    <node concept="3EZMnI" id="6Asc$CvhvEv" role="2wV5jI">
      <node concept="2iRkQZ" id="6Asc$CvhvEw" role="2iSdaV" />
      <node concept="3EZMnI" id="6Asc$CvhvEx" role="3EZMnx">
        <node concept="PMmxH" id="6Asc$CvhvGf" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        </node>
        <node concept="2iRfu4" id="6Asc$CvhvEz" role="2iSdaV" />
        <node concept="3F0A7n" id="6Asc$CvhvE$" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="6Asc$CvhvE_" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
      </node>
      <node concept="3EZMnI" id="6Asc$CvhvEA" role="3EZMnx">
        <node concept="VPM3Z" id="6Asc$CvhvEB" role="3F10Kt" />
        <node concept="3XFhqQ" id="6Asc$CvhvEC" role="3EZMnx" />
        <node concept="2iRfu4" id="6Asc$CvhvED" role="2iSdaV" />
        <node concept="3EZMnI" id="6Asc$CvhvEE" role="3EZMnx">
          <node concept="VPM3Z" id="6Asc$CvhvEF" role="3F10Kt" />
          <node concept="3EZMnI" id="6Asc$CvhvEG" role="3EZMnx">
            <node concept="VPM3Z" id="6Asc$CvhvEH" role="3F10Kt" />
            <node concept="3F0ifn" id="6Asc$CvhvEI" role="3EZMnx">
              <property role="3F0ifm" value="position" />
            </node>
            <node concept="3F1sOY" id="6At7l0LXWQC" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6At7l0LXWGq" resolve="position" />
            </node>
            <node concept="2iRfu4" id="6Asc$CvhvEJ" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="6Asc$CvhvEU" role="3EZMnx">
            <node concept="VPM3Z" id="6Asc$CvhvEV" role="3F10Kt" />
            <node concept="3F0ifn" id="6Asc$CvhvEW" role="3EZMnx">
              <property role="3F0ifm" value="radius" />
            </node>
            <node concept="2iRfu4" id="6Asc$CvhvEX" role="2iSdaV" />
            <node concept="3F0A7n" id="6Asc$CvhvEY" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6Asc$CvhtL$" resolve="radius" />
            </node>
          </node>
          <node concept="3EZMnI" id="6Asc$CvhvEZ" role="3EZMnx">
            <node concept="VPM3Z" id="6Asc$CvhvF0" role="3F10Kt" />
            <node concept="3F0ifn" id="6Asc$CvhvF1" role="3EZMnx">
              <property role="3F0ifm" value="density" />
            </node>
            <node concept="2iRfu4" id="6Asc$CvhvF2" role="2iSdaV" />
            <node concept="3F0A7n" id="6Asc$CvhvF3" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6Asc$Cvhvvt" resolve="density" />
            </node>
          </node>
          <node concept="3EZMnI" id="6Asc$CvhvF4" role="3EZMnx">
            <node concept="VPM3Z" id="6Asc$CvhvF5" role="3F10Kt" />
            <node concept="3F0ifn" id="6Asc$CvhvF6" role="3EZMnx">
              <property role="3F0ifm" value="fixed?" />
            </node>
            <node concept="2iRfu4" id="6Asc$CvhvF7" role="2iSdaV" />
            <node concept="3F0A7n" id="6Asc$CvhvF8" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6Asc$Cvhvhp" resolve="isFixed" />
            </node>
          </node>
          <node concept="3EZMnI" id="16PkDIvfOjA" role="3EZMnx">
            <node concept="VPM3Z" id="16PkDIvfOjC" role="3F10Kt" />
            <node concept="3F0ifn" id="16PkDIvfOjE" role="3EZMnx">
              <property role="3F0ifm" value="isPoint?" />
            </node>
            <node concept="2iRfu4" id="16PkDIvfOjF" role="2iSdaV" />
            <node concept="3F0A7n" id="16PkDIvfOk9" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:16PkDIvfJHJ" resolve="isPoint" />
            </node>
          </node>
          <node concept="2EHx9g" id="6Asc$CvhvFe" role="2iSdaV" />
        </node>
      </node>
      <node concept="3F0ifn" id="6Asc$CvhvFf" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6At7l0LVUJm">
    <ref role="1XX52x" to="wfa7:6At7l0LVUIs" resolve="Vector2D" />
    <node concept="3EZMnI" id="6At7l0LVUJo" role="2wV5jI">
      <node concept="3F0ifn" id="6At7l0LVUJv" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="11LMrY" id="6At7l0LVUL0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="6At7l0LVUJr" role="2iSdaV" />
      <node concept="3F0A7n" id="6At7l0LVUJR" role="3EZMnx">
        <ref role="1NtTu8" to="wfa7:6At7l0LVUIt" resolve="_x" />
      </node>
      <node concept="3F0ifn" id="6At7l0LVUJH" role="3EZMnx">
        <property role="3F0ifm" value="|" />
        <node concept="11L4FC" id="6At7l0LVUKR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6At7l0LVUKW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6At7l0LVUKL" role="3EZMnx">
        <ref role="1NtTu8" to="wfa7:6At7l0LVUIv" resolve="_y" />
      </node>
      <node concept="11L4FC" id="6At7l0LVUL2" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="3F0ifn" id="6At7l0M3vuJ" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="11L4FC" id="6At7l0M3CkK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6At7l0LVXhv">
    <property role="3GE5qa" value="textual" />
    <ref role="1XX52x" to="wfa7:6At7l0LVHIJ" resolve="Joint2D" />
    <node concept="3EZMnI" id="6At7l0LVXhx" role="2wV5jI">
      <node concept="2iRkQZ" id="6At7l0LVXhy" role="2iSdaV" />
      <node concept="3EZMnI" id="6At7l0LVXhz" role="3EZMnx">
        <node concept="PMmxH" id="6At7l0LVXh$" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        </node>
        <node concept="2iRfu4" id="6At7l0LVXh_" role="2iSdaV" />
        <node concept="3F0A7n" id="6At7l0LVXhA" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="6At7l0LVXhB" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
      </node>
      <node concept="3EZMnI" id="6At7l0LVXhC" role="3EZMnx">
        <node concept="VPM3Z" id="6At7l0LVXhD" role="3F10Kt" />
        <node concept="3XFhqQ" id="6At7l0LVXhE" role="3EZMnx" />
        <node concept="2iRfu4" id="6At7l0LVXhF" role="2iSdaV" />
        <node concept="3EZMnI" id="6At7l0LVXhG" role="3EZMnx">
          <node concept="VPM3Z" id="6At7l0LVXhH" role="3F10Kt" />
          <node concept="3EZMnI" id="6At7l0LVXhI" role="3EZMnx">
            <node concept="VPM3Z" id="6At7l0LVXhJ" role="3F10Kt" />
            <node concept="3F0ifn" id="6At7l0LVXhK" role="3EZMnx">
              <property role="3F0ifm" value="body1" />
            </node>
            <node concept="2iRfu4" id="6At7l0LVXhL" role="2iSdaV" />
            <node concept="1iCGBv" id="6At7l0LVXjm" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6At7l0LVXgY" resolve="body1" />
              <node concept="1sVBvm" id="6At7l0LVXjo" role="1sWHZn">
                <node concept="3F0A7n" id="6At7l0LVXjw" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="6At7l0LVXhP" role="3EZMnx">
            <node concept="VPM3Z" id="6At7l0LVXhQ" role="3F10Kt" />
            <node concept="3F0ifn" id="6At7l0LVXhR" role="3EZMnx">
              <property role="3F0ifm" value="body2" />
            </node>
            <node concept="2iRfu4" id="6At7l0LVXhS" role="2iSdaV" />
            <node concept="1iCGBv" id="6At7l0LVXjW" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6At7l0LVXh1" resolve="body2" />
              <node concept="1sVBvm" id="6At7l0LVXjY" role="1sWHZn">
                <node concept="3F0A7n" id="6At7l0LVXk6" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="6At7l0LVXhW" role="3EZMnx">
            <node concept="VPM3Z" id="6At7l0LVXhX" role="3F10Kt" />
            <node concept="3F0ifn" id="6At7l0LVXhY" role="3EZMnx">
              <property role="3F0ifm" value="loc" />
            </node>
            <node concept="2iRfu4" id="6At7l0LVXhZ" role="2iSdaV" />
            <node concept="3F1sOY" id="6At7l0LVXk9" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6At7l0LVXgW" resolve="loc" />
            </node>
          </node>
          <node concept="2EHx9g" id="6At7l0LVXil" role="2iSdaV" />
        </node>
      </node>
      <node concept="3F0ifn" id="6At7l0LVXim" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6At7l0LYYM9">
    <ref role="1XX52x" to="wfa7:6At7l0LYYLG" resolve="BodyRef" />
    <node concept="1iCGBv" id="6At7l0LYYMb" role="2wV5jI">
      <ref role="1NtTu8" to="wfa7:6At7l0LYYLH" resolve="body" />
      <node concept="1sVBvm" id="6At7l0LYYMd" role="1sWHZn">
        <node concept="3F0A7n" id="6At7l0LYYMk" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6At7l0LYYNf">
    <property role="3GE5qa" value="textual" />
    <ref role="1XX52x" to="wfa7:6At7l0LYYLD" resolve="MovingPart2D" />
    <node concept="3EZMnI" id="6At7l0LYYNk" role="2wV5jI">
      <node concept="3EZMnI" id="6At7l0LYYNr" role="3EZMnx">
        <node concept="PMmxH" id="6At7l0LYYNs" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        </node>
        <node concept="2iRfu4" id="6At7l0LYYNt" role="2iSdaV" />
        <node concept="3F0A7n" id="6At7l0LYYNu" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="6At7l0LYYNv" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
      </node>
      <node concept="3EZMnI" id="6At7l0LYYNw" role="3EZMnx">
        <node concept="VPM3Z" id="6At7l0LYYNx" role="3F10Kt" />
        <node concept="3XFhqQ" id="6At7l0LYYNy" role="3EZMnx" />
        <node concept="2iRfu4" id="6At7l0LYYNz" role="2iSdaV" />
        <node concept="3EZMnI" id="6At7l0LYYN$" role="3EZMnx">
          <node concept="VPM3Z" id="6At7l0LYYN_" role="3F10Kt" />
          <node concept="2EHx9g" id="6At7l0LYYOb" role="2iSdaV" />
          <node concept="3F2HdR" id="6At7l0LYYPJ" role="3EZMnx">
            <ref role="1NtTu8" to="wfa7:6At7l0LYYMn" resolve="bodies" />
            <node concept="2EHx9g" id="6At7l0LYYPK" role="2czzBx" />
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="6At7l0LYYNn" role="2iSdaV" />
      <node concept="3F0ifn" id="6At7l0M3Kj$" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6At7l0NqOsK">
    <ref role="1XX52x" to="wfa7:6At7l0NqOsG" resolve="Range" />
    <node concept="3EZMnI" id="6At7l0NqOsM" role="2wV5jI">
      <node concept="3F0ifn" id="6At7l0NqOsT" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="11LMrY" id="6At7l0NqOt$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="6At7l0NqOsP" role="2iSdaV" />
      <node concept="3F0A7n" id="6At7l0NqOth" role="3EZMnx">
        <ref role="1NtTu8" to="wfa7:6At7l0NqOs_" resolve="a" />
      </node>
      <node concept="3F0ifn" id="6At7l0NqOt7" role="3EZMnx">
        <property role="3F0ifm" value=".." />
      </node>
      <node concept="3F0A7n" id="6At7l0NqOtt" role="3EZMnx">
        <ref role="1NtTu8" to="wfa7:6At7l0NqOsC" resolve="b" />
      </node>
      <node concept="3F0ifn" id="6At7l0NqOsZ" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="11L4FC" id="6At7l0NqOtA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="2Ar3EGngYSk">
    <property role="TrG5h" value="DummyForGrammarCells" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="3F0ifn" id="2Ar3EGngYSl" role="2wV5jI">
      <property role="3F0ifm" value="Workaround to fix contributions to BaseConcept generated by grammarCells." />
    </node>
  </node>
  <node concept="2ABfQD" id="TGjk$xz4rW">
    <property role="TrG5h" value="World2DHints" />
    <node concept="2BsEeg" id="TGjk$xz4rX" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="TABLE" />
    </node>
  </node>
  <node concept="24kQdi" id="TGjk$xz4sp">
    <ref role="1XX52x" to="wfa7:6Asc$CvgZXX" resolve="World2D" />
    <node concept="3EZMnI" id="TGjk$xz4sq" role="2wV5jI">
      <node concept="PMmxH" id="56ab_KnSP$3" role="3EZMnx">
        <ref role="PMmxG" node="56ab_KnSPzO" resolve="World2DHeaderEditorComponent" />
      </node>
      <node concept="2iRkQZ" id="TGjk$xz4sw" role="2iSdaV" />
      <node concept="2rfBfz" id="TGjk$xz4t0" role="3EZMnx">
        <node concept="2reSaE" id="56ab_KnH9Yo" role="2rf8GZ">
          <ref role="2reCK$" to="wfa7:6Asc$CvgZZf" resolve="elements" />
          <node concept="1g0IQG" id="56ab_KnMQ6s" role="1geGt4" />
        </node>
        <node concept="1g0IQG" id="56ab_KnMm43" role="1geGt4" />
      </node>
    </node>
    <node concept="2aJ2om" id="TGjk$xz4sD" role="CpUAK">
      <ref role="2$4xQ3" node="TGjk$xz4rX" resolve="TABLE" />
    </node>
  </node>
  <node concept="24kQdi" id="TGjk$xzBEr">
    <property role="3GE5qa" value="table1" />
    <ref role="1XX52x" to="wfa7:6Asc$Cvh008" resolve="Box2D" />
    <node concept="2aJ2om" id="TGjk$xzBK5" role="CpUAK">
      <ref role="2$4xQ3" node="TGjk$xz4rX" resolve="TABLE" />
    </node>
    <node concept="2r0Tta" id="TGjk$xzBK9" role="2wV5jI">
      <node concept="2reCLk" id="TGjk$xzBKh" role="2r0Tv6">
        <node concept="2reCLy" id="56ab_KnIswI" role="2reCL6">
          <node concept="PMmxH" id="56ab_KnIsxf" role="2reSmM">
            <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
          </node>
          <node concept="2rfbtV" id="56ab_KnIsxh" role="2recC9">
            <property role="2rfbtB" value="type" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$xzBKk" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$xzBKo" role="2reSmM">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="2rfbtV" id="TGjk$x$e3m" role="2recC9">
            <property role="2rfbtB" value="name" />
            <node concept="1g0IQG" id="56ab_KnRUO9" role="1geGt4" />
          </node>
          <node concept="1g0IQG" id="56ab_KnOHa5" role="1geGt4" />
        </node>
        <node concept="2reCLy" id="TGjk$x$x9y" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$x$x9F" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6Asc$Cvhvhp" resolve="isFixed" />
          </node>
          <node concept="2rfbtV" id="TGjk$x$ODP" role="2recC9">
            <property role="2rfbtB" value="fixed?" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$x_8r9" role="2reCL6">
          <node concept="3F1sOY" id="TGjk$x_8rl" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6At7l0LXWGq" resolve="position" />
          </node>
          <node concept="2rfbtV" id="TGjk$x_8ro" role="2recC9">
            <property role="2rfbtB" value="position" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$x_KYW" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$x_KZb" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6Asc$Cvhvvt" resolve="density" />
          </node>
          <node concept="2rfbtV" id="TGjk$x_KZe" role="2recC9">
            <property role="2rfbtB" value="density" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$x_KZu" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$x_KZK" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:16PkDIvfJHJ" resolve="isPoint" />
          </node>
          <node concept="2rfbtV" id="TGjk$x_KZN" role="2recC9">
            <property role="2rfbtB" value="point?" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$xA7_Y" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$xA7Am" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6Asc$Cvhcuy" resolve="_width" />
          </node>
          <node concept="2rfbtV" id="TGjk$xA7B9" role="2recC9">
            <property role="2rfbtB" value="width" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$xA7AG" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$xA7B6" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6Asc$Cvhcu$" resolve="_height" />
          </node>
          <node concept="2rfbtV" id="TGjk$xA7Bb" role="2recC9">
            <property role="2rfbtB" value="height" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$xA7Cu" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$xA7CV" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6Asc$Cvhcuo" resolve="angle" />
          </node>
          <node concept="2rfbtV" id="TGjk$xA7Dn" role="2recC9">
            <property role="2rfbtB" value="angle" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$xA7B$" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$xA7C2" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6Asc$CvhhpZ" resolve="withCollisions" />
          </node>
          <node concept="2rfbtV" id="TGjk$xA7Dp" role="2recC9">
            <property role="2rfbtB" value="collisions?" />
          </node>
        </node>
        <node concept="1g0IQG" id="56ab_KnNMlc" role="1geGt4" />
      </node>
      <node concept="1g0IQG" id="56ab_KnQ5f2" role="1geGt4" />
    </node>
  </node>
  <node concept="24kQdi" id="TGjk$x_rYG">
    <property role="3GE5qa" value="table1" />
    <ref role="1XX52x" to="wfa7:6Asc$CvhtLu" resolve="Circle2D" />
    <node concept="2aJ2om" id="TGjk$x_rZl" role="CpUAK">
      <ref role="2$4xQ3" node="TGjk$xz4rX" resolve="TABLE" />
    </node>
    <node concept="2r0Tta" id="TGjk$x_rZp" role="2wV5jI">
      <node concept="2reCLk" id="TGjk$x_rZs" role="2r0Tv6">
        <node concept="2reCLy" id="56ab_KnIsxA" role="2reCL6">
          <node concept="PMmxH" id="56ab_KnIsxB" role="2reSmM">
            <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
          </node>
          <node concept="2rfbtV" id="56ab_KnIsxC" role="2recC9">
            <property role="2rfbtB" value="type" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$x_rZu" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$x_rZv" role="2reSmM">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="2rfbtV" id="TGjk$x_rZw" role="2recC9">
            <property role="2rfbtB" value="name" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$x_rZx" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$x_rZy" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6Asc$Cvhvhp" resolve="isFixed" />
          </node>
          <node concept="2rfbtV" id="TGjk$x_rZz" role="2recC9">
            <property role="2rfbtB" value="fixed?" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$x_rZ$" role="2reCL6">
          <node concept="3F1sOY" id="TGjk$x_rZ_" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6At7l0LXWGq" resolve="position" />
          </node>
          <node concept="2rfbtV" id="TGjk$x_rZA" role="2recC9">
            <property role="2rfbtB" value="position" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$x_KZP" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$x_KZQ" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6Asc$Cvhvvt" resolve="density" />
          </node>
          <node concept="2rfbtV" id="TGjk$x_KZR" role="2recC9">
            <property role="2rfbtB" value="density" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$x_KZS" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$x_KZT" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:16PkDIvfJHJ" resolve="isPoint" />
          </node>
          <node concept="2rfbtV" id="TGjk$x_KZU" role="2recC9">
            <property role="2rfbtB" value="point?" />
          </node>
        </node>
        <node concept="2reCLy" id="TGjk$xAwa4" role="2reCL6">
          <node concept="3F0A7n" id="TGjk$xAwap" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6Asc$CvhtL$" resolve="radius" />
          </node>
          <node concept="2rfbtV" id="TGjk$xAwas" role="2recC9">
            <property role="2rfbtB" value="radius" />
          </node>
          <node concept="1g0IQG" id="TGjk$xATGe" role="1geGt4" />
        </node>
        <node concept="2reCLy" id="56ab_KnI1i5" role="2reCL6">
          <node concept="3F0ifn" id="56ab_KnI1i6" role="2reSmM">
            <property role="3F0ifm" value="" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="56ab_KnH9Yr">
    <property role="3GE5qa" value="table1" />
    <ref role="1XX52x" to="wfa7:6At7l0LVHIJ" resolve="Joint2D" />
    <node concept="2aJ2om" id="56ab_KnH9YY" role="CpUAK">
      <ref role="2$4xQ3" node="TGjk$xz4rX" resolve="TABLE" />
    </node>
    <node concept="2r0Tta" id="56ab_KnH9Z2" role="2wV5jI">
      <node concept="2reCLk" id="56ab_KnH9Zg" role="2r0Tv6">
        <node concept="2reCLy" id="56ab_KnIsxj" role="2reCL6">
          <node concept="PMmxH" id="56ab_KnIsxk" role="2reSmM">
            <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
          </node>
          <node concept="2rfbtV" id="56ab_KnIsxl" role="2recC9">
            <property role="2rfbtB" value="type" />
          </node>
        </node>
        <node concept="2reCLy" id="56ab_KnH9Zn" role="2reCL6">
          <node concept="3F0A7n" id="56ab_KnH9Zr" role="2reSmM">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="2rfbtV" id="56ab_KnH9Zu" role="2recC9">
            <property role="2rfbtB" value="name" />
          </node>
        </node>
        <node concept="2reCLy" id="56ab_KnHtrW" role="2reCL6">
          <node concept="3F0ifn" id="56ab_KnHts7" role="2reSmM">
            <property role="3F0ifm" value="" />
          </node>
          <node concept="2rfbtV" id="56ab_KnKxNr" role="2recC9">
            <property role="2rfbtB" value="fixed?" />
          </node>
        </node>
        <node concept="2reCLy" id="56ab_KnH9Z_" role="2reCL6">
          <node concept="3F1sOY" id="56ab_KnH9ZI" role="2reSmM">
            <ref role="1NtTu8" to="wfa7:6At7l0LVXgW" resolve="loc" />
          </node>
          <node concept="2rfbtV" id="56ab_KnKxNt" role="2recC9">
            <property role="2rfbtB" value="position" />
          </node>
        </node>
        <node concept="2reCLy" id="56ab_KnI1hu" role="2reCL6">
          <node concept="3EZMnI" id="56ab_KnK5H2" role="2reSmM">
            <node concept="1iCGBv" id="56ab_KnK5H9" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6At7l0LVXgY" resolve="body1" />
              <node concept="1sVBvm" id="56ab_KnK5Hb" role="1sWHZn">
                <node concept="3F0A7n" id="56ab_KnK5Hi" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="2iRfu4" id="56ab_KnK5H5" role="2iSdaV" />
            <node concept="3F0ifn" id="56ab_KnK5HE" role="3EZMnx">
              <property role="3F0ifm" value="=&gt;" />
            </node>
            <node concept="1iCGBv" id="56ab_KnK5HQ" role="3EZMnx">
              <ref role="1NtTu8" to="wfa7:6At7l0LVXh1" resolve="body2" />
              <node concept="1sVBvm" id="56ab_KnK5HS" role="1sWHZn">
                <node concept="3F0A7n" id="56ab_KnK5I3" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="56ab_KnKxL0">
    <property role="3GE5qa" value="table1" />
    <ref role="1XX52x" to="wfa7:6At7l0LYYLD" resolve="MovingPart2D" />
    <node concept="2aJ2om" id="56ab_KnKxLi" role="CpUAK">
      <ref role="2$4xQ3" node="TGjk$xz4rX" resolve="TABLE" />
    </node>
    <node concept="2r0Tta" id="56ab_KnKxLm" role="2wV5jI">
      <node concept="2reCLk" id="56ab_KnKxLp" role="2r0Tv6">
        <node concept="2reCLy" id="56ab_KnKxLr" role="2reCL6">
          <node concept="PMmxH" id="56ab_KnKxLv" role="2reSmM">
            <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
          </node>
          <node concept="2rfbtV" id="56ab_KnKxLx" role="2recC9">
            <property role="2rfbtB" value="type" />
          </node>
        </node>
        <node concept="2reCLy" id="56ab_KnKxLC" role="2reCL6">
          <node concept="3F0A7n" id="56ab_KnKxLL" role="2reSmM">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="2rfbtV" id="56ab_KnKxLO" role="2recC9">
            <property role="2rfbtB" value="name" />
          </node>
        </node>
        <node concept="2reCLy" id="56ab_KnKxMz" role="2reCL6">
          <node concept="3F0ifn" id="56ab_KnKxMO" role="2reSmM">
            <property role="3F0ifm" value="" />
          </node>
          <node concept="2rfbtV" id="56ab_KnKxNn" role="2recC9">
            <property role="2rfbtB" value="fixed?" />
          </node>
        </node>
        <node concept="2reCLy" id="56ab_KnKxN6" role="2reCL6">
          <node concept="3F0ifn" id="56ab_KnKxN7" role="2reSmM">
            <property role="3F0ifm" value="" />
          </node>
          <node concept="2rfbtV" id="56ab_KnKxNp" role="2recC9">
            <property role="2rfbtB" value="position" />
          </node>
        </node>
        <node concept="2reCLy" id="56ab_KnKxLY" role="2reCL6">
          <node concept="3EZMnI" id="56ab_KnKxMa" role="2reSmM">
            <node concept="3F2HdR" id="56ab_KnKxMh" role="3EZMnx">
              <property role="2czwfO" value="," />
              <ref role="1NtTu8" to="wfa7:6At7l0LYYMn" resolve="bodies" />
              <node concept="2iRfu4" id="56ab_KnKxMj" role="2czzBx" />
            </node>
            <node concept="2iRfu4" id="56ab_KnKxMd" role="2iSdaV" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="56ab_KnSPzO">
    <property role="TrG5h" value="World2DHeaderEditorComponent" />
    <ref role="1XX52x" to="wfa7:6Asc$CvgZXX" resolve="World2D" />
    <node concept="3EZMnI" id="56ab_KnSPzP" role="2wV5jI">
      <node concept="VPM3Z" id="56ab_KnSPzQ" role="3F10Kt" />
      <node concept="3EZMnI" id="56ab_KnSPzR" role="3EZMnx">
        <node concept="VPM3Z" id="56ab_KnSPzS" role="3F10Kt" />
        <node concept="3F0ifn" id="56ab_KnSPzT" role="3EZMnx">
          <property role="3F0ifm" value="world2d" />
        </node>
        <node concept="2iRfu4" id="56ab_KnSPzU" role="2iSdaV" />
        <node concept="3F0A7n" id="56ab_KnSPzV" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3F0ifn" id="56ab_KnSPzW" role="3EZMnx" />
      <node concept="3EZMnI" id="56ab_KnSPzX" role="3EZMnx">
        <node concept="2iRfu4" id="56ab_KnSPzY" role="2iSdaV" />
        <node concept="3F0ifn" id="56ab_KnSPzZ" role="3EZMnx">
          <property role="3F0ifm" value="x-range:" />
        </node>
        <node concept="3F1sOY" id="56ab_KnSP$0" role="3EZMnx">
          <ref role="1NtTu8" to="wfa7:6At7l0NqP9k" resolve="x_range" />
        </node>
      </node>
      <node concept="3F0ifn" id="56ab_KnSP$1" role="3EZMnx" />
      <node concept="2iRkQZ" id="56ab_KnSP$2" role="2iSdaV" />
    </node>
  </node>
</model>

