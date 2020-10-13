<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:50fa461b-2709-4d24-97af-6b81f8fba7f2(org.itemis.phydev.plugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter" version="1" />
  </languages>
  <imports>
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="wl5u" ref="r:4e6d5887-bd72-487b-8a33-9a312d03f1ef(org.itemis.phydev.structure)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="carl" ref="r:78f6e3a3-3a3d-4298-b0df-7510c56bffaa(org.itemis.phydev.behavior)" />
    <import index="i1wt" ref="r:094c7499-ed0f-433f-9bb4-33e921f96162(org.itemis.phydev.runtime)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="hdfp" ref="856b26ba-05ad-49b3-8b5b-d034f8f7a4a0/java:org.jbox2d.dynamics(org.itemis.phydev.runtime/)" />
    <import index="ewbl" ref="856b26ba-05ad-49b3-8b5b-d034f8f7a4a0/java:org.jbox2d.collision(org.itemis.phydev.runtime/)" />
    <import index="9s9o" ref="856b26ba-05ad-49b3-8b5b-d034f8f7a4a0/java:org.jbox2d.common(org.itemis.phydev.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1215865999894" name="mnemonic" index="ngHcd" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1213888653896" name="jetbrains.mps.lang.plugin.structure.InitBlock" flags="in" index="2xpIHi" />
      <concept id="1213888797251" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_Project" flags="nn" index="2xqhHp" />
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="8096638938275469614" name="toolInitBlock" index="uR5cp" />
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
      </concept>
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
      </concept>
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
      <concept id="681855071694758165" name="jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation" flags="nn" index="LR4U6">
        <reference id="681855071694758166" name="tool" index="LR4U5" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter">
      <concept id="2515196518060811313" name="com.mbeddr.mpsutil.interpreter.structure.DummyEvaluator" flags="ng" index="lHU7p" />
      <concept id="5293529713177831489" name="com.mbeddr.mpsutil.interpreter.structure.NodeExpression" flags="ng" index="oxGPV" />
      <concept id="8615074351687299818" name="com.mbeddr.mpsutil.interpreter.structure.Interpreter" flags="ng" index="qq9qg">
        <property id="8426159527444241399" name="category" index="UYu25" />
        <child id="8615074351687302157" name="evaluators" index="qq9xR" />
      </concept>
      <concept id="8615074351687301435" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluator" flags="ng" index="qq9P1">
        <reference id="8615074351687302216" name="concept" index="qq9wM" />
      </concept>
      <concept id="5293529713180742448" name="com.mbeddr.mpsutil.interpreter.structure.InterpretConstraintExpression" flags="ng" index="rqRoa" />
      <concept id="3406009787378976616" name="com.mbeddr.mpsutil.interpreter.structure.EnvExpression" flags="ng" index="TvHiN" />
      <concept id="5712773029518214110" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluatorBody" flags="ng" index="3dA_Gj">
        <child id="5934114435582613364" name="body" index="3vcmbn" />
      </concept>
      <concept id="5934114435583058812" name="com.mbeddr.mpsutil.interpreter.structure.AbstractEvaluator" flags="ng" index="3va1rv">
        <property id="8845772667389641968" name="cacheValues" index="2TnfIJ" />
        <child id="5934114435584084790" name="evaluator" index="3vQZUl" />
      </concept>
      <concept id="5934114435582125873" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluatorInline" flags="ng" index="3vetai">
        <child id="5934114435582660673" name="expression" index="3vdyny" />
      </concept>
      <concept id="8511326569641917307" name="com.mbeddr.mpsutil.interpreter.structure.AbstractConstraintRecursionExpression" flags="ng" index="3SLZkg">
        <reference id="5293529713180742449" name="child" index="rqRob" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="6KOiXOpxr6k" />
  <node concept="sEfby" id="6KOiXOpxxuO">
    <property role="TrG5h" value="PhysicsSimulation" />
    <property role="2XNbzY" value="Physics Simulation" />
    <node concept="2XrIbr" id="6KOiXOpzYpu" role="2XNbBy">
      <property role="TrG5h" value="load" />
      <node concept="3cqZAl" id="6KOiXOpzYQh" role="3clF45" />
      <node concept="3clFbS" id="6KOiXOpzYpw" role="3clF47">
        <node concept="3clFbF" id="6h7RWbAqnMW" role="3cqZAp">
          <node concept="37vLTI" id="6h7RWbAqo7Z" role="3clFbG">
            <node concept="37vLTw" id="6h7RWbAqoaC" role="37vLTx">
              <ref role="3cqZAo" node="6KOiXOpzYVe" resolve="world" />
            </node>
            <node concept="2OqwBi" id="6h7RWbAqnSL" role="37vLTJ">
              <node concept="2WthIp" id="6h7RWbAqnMV" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6h7RWbAqo0O" role="2OqNvi">
                <ref role="2WH_rO" node="6KOiXOpzZ4d" resolve="world" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dnOL$" role="3cqZAp">
          <node concept="37vLTI" id="2QSm86dnPfQ" role="3clFbG">
            <node concept="10Nm6u" id="2QSm86dnPgp" role="37vLTx" />
            <node concept="2OqwBi" id="2QSm86dnORI" role="37vLTJ">
              <node concept="2WthIp" id="2QSm86dnOLy" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2QSm86dnP9l" role="2OqNvi">
                <ref role="2WH_rO" node="2QSm86dngu1" resolve="viewport" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2QSm86dtOpC" role="3cqZAp" />
        <node concept="3clFbJ" id="2QSm86dtOwo" role="3cqZAp">
          <node concept="3clFbS" id="2QSm86dtOwq" role="3clFbx">
            <node concept="3clFbF" id="2QSm86dtNXJ" role="3cqZAp">
              <node concept="37vLTI" id="2QSm86dtOm$" role="3clFbG">
                <node concept="3clFbT" id="2QSm86dtOmY" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="2QSm86dtO0g" role="37vLTJ">
                  <node concept="2WthIp" id="2QSm86dtNXH" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="2QSm86dtO3_" role="2OqNvi">
                    <ref role="2WH_rO" node="2QSm86dtveH" resolve="requestForStop" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2QSm86dtP9S" role="3cqZAp">
              <node concept="1PaTwC" id="2QSm86dtP9T" role="1aUNEU">
                <node concept="3oM_SD" id="2QSm86dtP9U" role="1PaTwD">
                  <property role="3oM_SC" value="wait" />
                </node>
                <node concept="3oM_SD" id="2QSm86dtPb2" role="1PaTwD">
                  <property role="3oM_SC" value="until" />
                </node>
                <node concept="3oM_SD" id="2QSm86dtPbd" role="1PaTwD">
                  <property role="3oM_SC" value="running" />
                </node>
                <node concept="3oM_SD" id="2QSm86dtPbD" role="1PaTwD">
                  <property role="3oM_SC" value="simulation" />
                </node>
                <node concept="3oM_SD" id="2QSm86dtPbY" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="2QSm86dtPc4" role="1PaTwD">
                  <property role="3oM_SC" value="finished" />
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="2QSm86dtOY_" role="3cqZAp">
              <node concept="3uVAMA" id="2QSm86dtOYA" role="1zxBo5">
                <node concept="XOnhg" id="2QSm86dtOYB" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="2QSm86dtOYC" role="1tU5fm">
                    <node concept="3uibUv" id="2QSm86dtOYD" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2QSm86dtOYE" role="1zc67A" />
              </node>
              <node concept="3clFbS" id="2QSm86dtOYF" role="1zxBo7">
                <node concept="3clFbF" id="2QSm86dtOYG" role="3cqZAp">
                  <node concept="2YIFZM" id="2QSm86dtOYH" role="3clFbG">
                    <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                    <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                    <node concept="3cmrfG" id="2QSm86dtOYI" role="37wK5m">
                      <property role="3cmrfH" value="500" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2QSm86dtOHL" role="3clFbw">
            <node concept="10Nm6u" id="2QSm86dtOMM" role="3uHU7w" />
            <node concept="2OqwBi" id="2QSm86dtO_p" role="3uHU7B">
              <node concept="2WthIp" id="2QSm86dtOyq" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2QSm86dtOCw" role="2OqNvi">
                <ref role="2WH_rO" node="2QSm86dtpBO" resolve="simThread" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6KOiXOpzYVe" role="3clF46">
        <property role="TrG5h" value="world" />
        <node concept="3uibUv" id="6h7RWbAqnck" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6KOiXOpzZ1o" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2QSm86dt9i_" role="2XNbBy">
      <property role="TrG5h" value="runSimulation" />
      <node concept="3cqZAl" id="2QSm86dtalM" role="3clF45" />
      <node concept="3clFbS" id="2QSm86dt9iB" role="3clF47">
        <node concept="3clFbF" id="2QSm86dtwVB" role="3cqZAp">
          <node concept="37vLTI" id="2QSm86dtxHc" role="3clFbG">
            <node concept="3clFbT" id="2QSm86dtxHT" role="37vLTx" />
            <node concept="2OqwBi" id="2QSm86dtxhL" role="37vLTJ">
              <node concept="2WthIp" id="2QSm86dtxbq" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2QSm86dtxqd" role="2OqNvi">
                <ref role="2WH_rO" node="2QSm86dtveH" resolve="requestForStop" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dtrfH" role="3cqZAp">
          <node concept="37vLTI" id="2QSm86dtrRS" role="3clFbG">
            <node concept="2OqwBi" id="2QSm86dtr_K" role="37vLTJ">
              <node concept="2WthIp" id="2QSm86dtrve" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2QSm86dtrIn" role="2OqNvi">
                <ref role="2WH_rO" node="2QSm86dtpBO" resolve="simThread" />
              </node>
            </node>
            <node concept="2ShNRf" id="2QSm86dtanB" role="37vLTx">
              <node concept="1pGfFk" id="2QSm86dtanC" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
                <node concept="2ShNRf" id="2QSm86dtanD" role="37wK5m">
                  <node concept="YeOm9" id="2QSm86dtanE" role="2ShVmc">
                    <node concept="1Y3b0j" id="2QSm86dtanF" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2QSm86dtanG" role="1B3o_S" />
                      <node concept="3clFb_" id="2QSm86dtanH" role="jymVt">
                        <property role="TrG5h" value="run" />
                        <node concept="3Tm1VV" id="2QSm86dtanI" role="1B3o_S" />
                        <node concept="3cqZAl" id="2QSm86dtanJ" role="3clF45" />
                        <node concept="3clFbS" id="2QSm86dtanK" role="3clF47">
                          <node concept="3cpWs8" id="667ewDY39fW" role="3cqZAp">
                            <node concept="3cpWsn" id="667ewDY39fZ" role="3cpWs9">
                              <property role="TrG5h" value="fps" />
                              <node concept="10Oyi0" id="667ewDY39fU" role="1tU5fm" />
                              <node concept="3cmrfG" id="667ewDY39wd" role="33vP2m">
                                <property role="3cmrfH" value="20" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="2QSm86dtanL" role="3cqZAp">
                            <node concept="3cpWsn" id="2QSm86dtanM" role="3cpWs9">
                              <property role="TrG5h" value="timeStep" />
                              <node concept="10OMs4" id="2QSm86dtanN" role="1tU5fm" />
                              <node concept="FJ1c_" id="2QSm86dtanO" role="33vP2m">
                                <node concept="2$xPTn" id="2QSm86dtanQ" role="3uHU7B">
                                  <property role="2$xPTl" value="1.0f" />
                                </node>
                                <node concept="1eOMI4" id="667ewDY3aeL" role="3uHU7w">
                                  <node concept="10QFUN" id="667ewDY3aeI" role="1eOMHV">
                                    <node concept="10OMs4" id="667ewDY3auI" role="10QFUM" />
                                    <node concept="37vLTw" id="667ewDY3a5I" role="10QFUP">
                                      <ref role="3cqZAo" node="667ewDY39fZ" resolve="fps" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="2QSm86dtB58" role="3cqZAp">
                            <node concept="3cpWsn" id="2QSm86dtB5b" role="3cpWs9">
                              <property role="TrG5h" value="i" />
                              <node concept="10Oyi0" id="2QSm86dtB56" role="1tU5fm" />
                              <node concept="3cmrfG" id="2QSm86dtBq9" role="33vP2m">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                          </node>
                          <node concept="2$JKZl" id="2QSm86dt$3C" role="3cqZAp">
                            <node concept="3clFbS" id="2QSm86dt$3E" role="2LFqv$">
                              <node concept="3clFbF" id="2QSm86dtaob" role="3cqZAp">
                                <node concept="2OqwBi" id="2QSm86dtaoc" role="3clFbG">
                                  <node concept="10M0yZ" id="2QSm86dtaod" role="2Oq$k0">
                                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                  </node>
                                  <node concept="liA8E" id="2QSm86dtaoe" role="2OqNvi">
                                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                                    <node concept="3cpWs3" id="2QSm86dtaof" role="37wK5m">
                                      <node concept="3uNrnE" id="2QSm86dtCtO" role="3uHU7w">
                                        <node concept="37vLTw" id="2QSm86dtCtQ" role="2$L3a6">
                                          <ref role="3cqZAo" node="2QSm86dtB5b" resolve="i" />
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="2QSm86dtaoh" role="3uHU7B">
                                        <property role="Xl_RC" value="FRAME " />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2QSm86dtaoi" role="3cqZAp">
                                <node concept="2OqwBi" id="2QSm86dtaoj" role="3clFbG">
                                  <node concept="2OqwBi" id="2QSm86dtaok" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2QSm86dtmfn" role="2Oq$k0">
                                      <node concept="2WthIp" id="2QSm86dtlYa" role="2Oq$k0" />
                                      <node concept="2BZ7hE" id="2QSm86dtmpm" role="2OqNvi">
                                        <ref role="2WH_rO" node="6KOiXOpzZ4d" resolve="world" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="2QSm86dtnlq" role="2OqNvi">
                                      <ref role="37wK5l" to="i1wt:6h7RWbApvZw" resolve="box2d" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2QSm86dtaon" role="2OqNvi">
                                    <ref role="37wK5l" to="hdfp:~World.step(float,int,int)" resolve="step" />
                                    <node concept="37vLTw" id="2QSm86dtaoo" role="37wK5m">
                                      <ref role="3cqZAo" node="2QSm86dtanM" resolve="timeStep" />
                                    </node>
                                    <node concept="3cmrfG" id="2QSm86dtaop" role="37wK5m">
                                      <property role="3cmrfH" value="10" />
                                    </node>
                                    <node concept="3cmrfG" id="2QSm86dtaoq" role="37wK5m">
                                      <property role="3cmrfH" value="8" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2QSm86dtaor" role="3cqZAp">
                                <node concept="2OqwBi" id="2QSm86dtaos" role="3clFbG">
                                  <node concept="2OqwBi" id="2QSm86dtaot" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2QSm86dtmX$" role="2Oq$k0">
                                      <node concept="2WthIp" id="2QSm86dtmFb" role="2Oq$k0" />
                                      <node concept="2BZ7hE" id="2QSm86dtn5Y" role="2OqNvi">
                                        <ref role="2WH_rO" node="6KOiXOpzZ4d" resolve="world" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="2QSm86dtaov" role="2OqNvi">
                                      <ref role="37wK5l" to="i1wt:6h7RWbApvZw" resolve="box2d" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2QSm86dtaow" role="2OqNvi">
                                    <ref role="37wK5l" to="hdfp:~World.clearForces()" resolve="clearForces" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2QSm86dtaoE" role="3cqZAp">
                                <node concept="2YIFZM" id="2QSm86dtaoF" role="3clFbG">
                                  <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                                  <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                                  <node concept="2ShNRf" id="2QSm86dtaoG" role="37wK5m">
                                    <node concept="YeOm9" id="2QSm86dtaoH" role="2ShVmc">
                                      <node concept="1Y3b0j" id="2QSm86dtaoI" role="YeSDq">
                                        <property role="2bfB8j" value="true" />
                                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                        <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                                        <node concept="3Tm1VV" id="2QSm86dtaoJ" role="1B3o_S" />
                                        <node concept="3clFb_" id="2QSm86dtaoK" role="jymVt">
                                          <property role="TrG5h" value="run" />
                                          <node concept="3Tm1VV" id="2QSm86dtaoL" role="1B3o_S" />
                                          <node concept="3cqZAl" id="2QSm86dtaoM" role="3clF45" />
                                          <node concept="3clFbS" id="2QSm86dtaoN" role="3clF47">
                                            <node concept="3clFbF" id="6h7RWbAr6Ae" role="3cqZAp">
                                              <node concept="2OqwBi" id="6h7RWbAr7hz" role="3clFbG">
                                                <node concept="2OqwBi" id="6h7RWbAr6G3" role="2Oq$k0">
                                                  <node concept="2WthIp" id="6h7RWbAr6Aa" role="2Oq$k0" />
                                                  <node concept="2BZ7hE" id="6h7RWbAr6O6" role="2OqNvi">
                                                    <ref role="2WH_rO" node="6KOiXOp$10G" resolve="myPanel" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="6h7RWbAr7UE" role="2OqNvi">
                                                  <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2AHcQZ" id="2QSm86dtaoS" role="2AJF6D">
                                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3J1_TO" id="2QSm86dtaoT" role="3cqZAp">
                                <node concept="3uVAMA" id="2QSm86dtaoU" role="1zxBo5">
                                  <node concept="XOnhg" id="2QSm86dtaoV" role="1zc67B">
                                    <property role="TrG5h" value="e" />
                                    <node concept="nSUau" id="2QSm86dtaoW" role="1tU5fm">
                                      <node concept="3uibUv" id="2QSm86dtaoX" role="nSUat">
                                        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="2QSm86dtaoY" role="1zc67A" />
                                </node>
                                <node concept="3clFbS" id="2QSm86dtaoZ" role="1zxBo7">
                                  <node concept="3clFbF" id="2QSm86dtap0" role="3cqZAp">
                                    <node concept="2YIFZM" id="2QSm86dtap1" role="3clFbG">
                                      <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                                      <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                                      <node concept="FJ1c_" id="667ewDY3bbr" role="37wK5m">
                                        <node concept="3cmrfG" id="2QSm86dtap2" role="3uHU7B">
                                          <property role="3cmrfH" value="1000" />
                                        </node>
                                        <node concept="37vLTw" id="667ewDY3bwO" role="3uHU7w">
                                          <ref role="3cqZAo" node="667ewDY39fZ" resolve="fps" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="2QSm86dv4Kb" role="2$JKZa">
                              <node concept="3y3z36" id="2QSm86dv5UI" role="3uHU7w">
                                <node concept="10Nm6u" id="2QSm86dv66v" role="3uHU7w" />
                                <node concept="2OqwBi" id="2QSm86dv5uR" role="3uHU7B">
                                  <node concept="2WthIp" id="2QSm86dv5gy" role="2Oq$k0" />
                                  <node concept="2BZ7hE" id="2QSm86dv5xM" role="2OqNvi">
                                    <ref role="2WH_rO" node="6KOiXOpzZ4d" resolve="world" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="2QSm86dt$ms" role="3uHU7B">
                                <node concept="2OqwBi" id="2QSm86dt$M3" role="3fr31v">
                                  <node concept="2WthIp" id="2QSm86dt_q5" role="2Oq$k0" />
                                  <node concept="2BZ7hE" id="2QSm86dt$M8" role="2OqNvi">
                                    <ref role="2WH_rO" node="2QSm86dtveH" resolve="requestForStop" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2QSm86dtMak" role="3cqZAp">
                            <node concept="37vLTI" id="2QSm86dtMMT" role="3clFbG">
                              <node concept="10Nm6u" id="2QSm86dtMNZ" role="37vLTx" />
                              <node concept="2OqwBi" id="2QSm86dtM_y" role="37vLTJ">
                                <node concept="2WthIp" id="2QSm86dtMai" role="2Oq$k0" />
                                <node concept="2BZ7hE" id="2QSm86dtMCU" role="2OqNvi">
                                  <ref role="2WH_rO" node="2QSm86dtpBO" resolve="simThread" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2QSm86dtapb" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dtoPF" role="3cqZAp">
          <node concept="2OqwBi" id="2QSm86dtoZF" role="3clFbG">
            <node concept="2OqwBi" id="2QSm86dttE5" role="2Oq$k0">
              <node concept="2WthIp" id="2QSm86dttE8" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2QSm86dttEa" role="2OqNvi">
                <ref role="2WH_rO" node="2QSm86dtpBO" resolve="simThread" />
              </node>
            </node>
            <node concept="liA8E" id="2QSm86dtp_j" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2QSm86dtamC" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2QSm86dtV6y" role="2XNbBy">
      <property role="TrG5h" value="isSimulationRunning" />
      <node concept="10P_77" id="2QSm86dtWme" role="3clF45" />
      <node concept="3clFbS" id="2QSm86dtV6$" role="3clF47">
        <node concept="3clFbF" id="2QSm86dtWqK" role="3cqZAp">
          <node concept="3y3z36" id="2QSm86dtWPk" role="3clFbG">
            <node concept="10Nm6u" id="2QSm86dtWPw" role="3uHU7w" />
            <node concept="2OqwBi" id="2QSm86dtWtJ" role="3uHU7B">
              <node concept="2WthIp" id="2QSm86dtWqJ" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2QSm86dtWwO" role="2OqNvi">
                <ref role="2WH_rO" node="2QSm86dtpBO" resolve="simThread" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2QSm86dtWQc" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2QSm86dttGQ" role="2XNbBy">
      <property role="TrG5h" value="stopSimulation" />
      <node concept="3cqZAl" id="2QSm86dtuTK" role="3clF45" />
      <node concept="3clFbS" id="2QSm86dttGS" role="3clF47">
        <node concept="3clFbF" id="2QSm86dtuYa" role="3cqZAp">
          <node concept="37vLTI" id="2QSm86dtzA8" role="3clFbG">
            <node concept="3clFbT" id="2QSm86dtzAy" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="2QSm86dtv3Z" role="37vLTJ">
              <node concept="2WthIp" id="2QSm86dtuY9" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2QSm86dtzj1" role="2OqNvi">
                <ref role="2WH_rO" node="2QSm86dtveH" resolve="requestForStop" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2QSm86dtuUK" role="1B3o_S" />
    </node>
    <node concept="2BZ0e9" id="6KOiXOpxyX3" role="2XNbBz">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="6KOiXOpxyX4" role="1B3o_S" />
      <node concept="3uibUv" id="6KOiXOpxzcI" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2BZ0e9" id="6KOiXOp$10G" role="2XNbBz">
      <property role="TrG5h" value="myPanel" />
      <node concept="3Tm6S6" id="6KOiXOp$10H" role="1B3o_S" />
      <node concept="3uibUv" id="6KOiXOp$1sr" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="2BZ0e9" id="6KOiXOpzZ4d" role="2XNbBz">
      <property role="TrG5h" value="world" />
      <node concept="3Tm6S6" id="6KOiXOpzZ4e" role="1B3o_S" />
      <node concept="3uibUv" id="6h7RWbAqngg" role="1tU5fm">
        <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
      </node>
      <node concept="10Nm6u" id="2QSm86dnjF5" role="33vP2m" />
    </node>
    <node concept="2BZ0e9" id="2QSm86dngu1" role="2XNbBz">
      <property role="TrG5h" value="viewport" />
      <node concept="3Tm6S6" id="2QSm86dngu2" role="1B3o_S" />
      <node concept="3uibUv" id="2QSm86dniYy" role="1tU5fm">
        <ref role="3uigEE" node="6h7RWbAGUFx" resolve="Viewport" />
      </node>
      <node concept="10Nm6u" id="2QSm86dnjEN" role="33vP2m" />
    </node>
    <node concept="2BZ0e9" id="2QSm86dniYO" role="2XNbBz">
      <property role="TrG5h" value="viewportSize" />
      <node concept="3Tm6S6" id="2QSm86dniYP" role="1B3o_S" />
      <node concept="10Oyi0" id="2QSm86dnj_D" role="1tU5fm" />
      <node concept="3cmrfG" id="2QSm86dnjEw" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="2BZ0e9" id="2QSm86dtpBO" role="2XNbBz">
      <property role="TrG5h" value="simThread" />
      <node concept="3Tm6S6" id="2QSm86dtpBP" role="1B3o_S" />
      <node concept="3uibUv" id="2QSm86dtqN4" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
      <node concept="10Nm6u" id="2QSm86dtqPl" role="33vP2m" />
    </node>
    <node concept="2BZ0e9" id="2QSm86dtveH" role="2XNbBz">
      <property role="TrG5h" value="requestForStop" />
      <node concept="3Tm6S6" id="2QSm86dtveI" role="1B3o_S" />
      <node concept="10P_77" id="2QSm86dtwxi" role="1tU5fm" />
      <node concept="3clFbT" id="2QSm86dtwxA" role="33vP2m" />
    </node>
    <node concept="2UmK3q" id="6KOiXOpxxuP" role="2Um5zG">
      <node concept="3clFbS" id="6KOiXOpxxuQ" role="2VODD2">
        <node concept="3cpWs8" id="6KOiXOpxNnQ" role="3cqZAp">
          <node concept="3cpWsn" id="6KOiXOpxNnR" role="3cpWs9">
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="6KOiXOpxNnS" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="6KOiXOpxNyt" role="33vP2m">
              <node concept="YeOm9" id="6KOiXOpz5hx" role="2ShVmc">
                <node concept="1Y3b0j" id="6KOiXOpz5h$" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  <ref role="1Y3XeK" to="dxuu:~JPanel" resolve="JPanel" />
                  <node concept="3Tm1VV" id="6KOiXOpz5h_" role="1B3o_S" />
                  <node concept="3clFb_" id="6KOiXOpz5E0" role="jymVt">
                    <property role="TrG5h" value="paintComponent" />
                    <node concept="3Tmbuc" id="6KOiXOpz5E1" role="1B3o_S" />
                    <node concept="3cqZAl" id="6KOiXOpz5E3" role="3clF45" />
                    <node concept="37vLTG" id="6KOiXOpz5E4" role="3clF46">
                      <property role="TrG5h" value="g" />
                      <node concept="3uibUv" id="6KOiXOpz5E5" role="1tU5fm">
                        <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="6KOiXOpz5E9" role="3clF47">
                      <node concept="3clFbF" id="6KOiXOpz5Ed" role="3cqZAp">
                        <node concept="3nyPlj" id="6KOiXOpz5Ec" role="3clFbG">
                          <ref role="37wK5l" to="dxuu:~JComponent.paintComponent(java.awt.Graphics)" resolve="paintComponent" />
                          <node concept="37vLTw" id="6KOiXOpz5Eb" role="37wK5m">
                            <ref role="3cqZAo" node="6KOiXOpz5E4" resolve="g" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6KOiXOpyGNx" role="3cqZAp">
                        <node concept="2OqwBi" id="6KOiXOpyGNu" role="3clFbG">
                          <node concept="10M0yZ" id="6KOiXOpyGNv" role="2Oq$k0">
                            <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                            <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                          </node>
                          <node concept="liA8E" id="6KOiXOpyGNw" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                            <node concept="3cpWs3" id="6KOiXOpyN3Y" role="37wK5m">
                              <node concept="1rXfSq" id="6KOiXOpzfLO" role="3uHU7w">
                                <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                              </node>
                              <node concept="3cpWs3" id="6KOiXOpyMaq" role="3uHU7B">
                                <node concept="3cpWs3" id="6KOiXOpyKhm" role="3uHU7B">
                                  <node concept="Xl_RD" id="6KOiXOpyI_i" role="3uHU7B">
                                    <property role="Xl_RC" value="REPAINT: canvas size = " />
                                  </node>
                                  <node concept="1rXfSq" id="6KOiXOpzep0" role="3uHU7w">
                                    <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="6KOiXOpyMav" role="3uHU7w">
                                  <property role="Xl_RC" value=", " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1X3_iC" id="6h7RWbAt1ei" role="lGtFl">
                        <property role="3V$3am" value="statement" />
                        <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                        <node concept="3clFbF" id="6KOiXOpyzQe" role="8Wnug">
                          <node concept="2OqwBi" id="6KOiXOpyA$s" role="3clFbG">
                            <node concept="37vLTw" id="6KOiXOpzcoi" role="2Oq$k0">
                              <ref role="3cqZAo" node="6KOiXOpz5E4" resolve="g" />
                            </node>
                            <node concept="liA8E" id="6KOiXOpyB1A" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
                              <node concept="3cmrfG" id="6h7RWbAqp3p" role="37wK5m">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="3cmrfG" id="6KOiXOp$dbT" role="37wK5m">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="1rXfSq" id="6KOiXOpzmFu" role="37wK5m">
                                <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                              </node>
                              <node concept="1rXfSq" id="6KOiXOpzneF" role="37wK5m">
                                <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="6h7RWbAqrg_" role="3cqZAp">
                        <node concept="3clFbS" id="6h7RWbAqrgB" role="3clFbx">
                          <node concept="3clFbJ" id="6h7RWbAtgIg" role="3cqZAp">
                            <node concept="3clFbS" id="6h7RWbAtgIi" role="3clFbx">
                              <node concept="3cpWs8" id="2QSm86dnk6k" role="3cqZAp">
                                <node concept="3cpWsn" id="2QSm86dnk6n" role="3cpWs9">
                                  <property role="TrG5h" value="newViewportSize" />
                                  <node concept="10Oyi0" id="2QSm86dnk6i" role="1tU5fm" />
                                  <node concept="17qRlL" id="2QSm86dnkX3" role="33vP2m">
                                    <node concept="1rXfSq" id="2QSm86dnmfk" role="3uHU7w">
                                      <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                                    </node>
                                    <node concept="1rXfSq" id="2QSm86dnkvr" role="3uHU7B">
                                      <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="2QSm86dnmL5" role="3cqZAp">
                                <node concept="3clFbS" id="2QSm86dnmL7" role="3clFbx">
                                  <node concept="3cpWs8" id="6h7RWbAIjnZ" role="3cqZAp">
                                    <node concept="3cpWsn" id="6h7RWbAIjo0" role="3cpWs9">
                                      <property role="TrG5h" value="worldBB" />
                                      <node concept="3uibUv" id="6h7RWbAIjmT" role="1tU5fm">
                                        <ref role="3uigEE" to="ewbl:~AABB" resolve="AABB" />
                                      </node>
                                      <node concept="2OqwBi" id="6h7RWbAIjo1" role="33vP2m">
                                        <node concept="2OqwBi" id="6h7RWbAIjo2" role="2Oq$k0">
                                          <node concept="2WthIp" id="2QSm86dnCLH" role="2Oq$k0" />
                                          <node concept="2BZ7hE" id="6h7RWbAIjo4" role="2OqNvi">
                                            <ref role="2WH_rO" node="6KOiXOpzZ4d" resolve="world" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="6h7RWbAIjo5" role="2OqNvi">
                                          <ref role="37wK5l" to="i1wt:6h7RWbAIaEy" resolve="getBoundingBox" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="2QSm86dnvSy" role="3cqZAp">
                                    <node concept="37vLTI" id="2QSm86dnwFM" role="3clFbG">
                                      <node concept="2OqwBi" id="2QSm86dnwlM" role="37vLTJ">
                                        <node concept="2WthIp" id="2QSm86dnvSw" role="2Oq$k0" />
                                        <node concept="2BZ7hE" id="2QSm86dnwvI" role="2OqNvi">
                                          <ref role="2WH_rO" node="2QSm86dngu1" resolve="viewport" />
                                        </node>
                                      </node>
                                      <node concept="2ShNRf" id="2QSm86dnx0B" role="37vLTx">
                                        <node concept="1pGfFk" id="2QSm86dnx0C" role="2ShVmc">
                                          <ref role="37wK5l" node="6h7RWbAH6Os" resolve="Viewport" />
                                          <node concept="37vLTw" id="2QSm86dnx0D" role="37wK5m">
                                            <ref role="3cqZAo" node="6h7RWbAIjo0" resolve="worldBB" />
                                          </node>
                                          <node concept="1rXfSq" id="2QSm86dnx0E" role="37wK5m">
                                            <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                                          </node>
                                          <node concept="1rXfSq" id="2QSm86dnx0F" role="37wK5m">
                                            <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="2QSm86dnrYg" role="3cqZAp">
                                    <node concept="37vLTI" id="2QSm86dnsYm" role="3clFbG">
                                      <node concept="37vLTw" id="2QSm86dntN2" role="37vLTx">
                                        <ref role="3cqZAo" node="2QSm86dnk6n" resolve="newViewportSize" />
                                      </node>
                                      <node concept="2OqwBi" id="2QSm86dnrYa" role="37vLTJ">
                                        <node concept="2WthIp" id="2QSm86dnGjC" role="2Oq$k0" />
                                        <node concept="2BZ7hE" id="2QSm86dnrYf" role="2OqNvi">
                                          <ref role="2WH_rO" node="2QSm86dniYO" resolve="viewportSize" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="22lmx$" id="2QSm86dnoch" role="3clFbw">
                                  <node concept="3y3z36" id="2QSm86dnpJ2" role="3uHU7w">
                                    <node concept="37vLTw" id="2QSm86dnqOj" role="3uHU7w">
                                      <ref role="3cqZAo" node="2QSm86dnk6n" resolve="newViewportSize" />
                                    </node>
                                    <node concept="2OqwBi" id="2QSm86dnoRj" role="3uHU7B">
                                      <node concept="2WthIp" id="2QSm86dnFln" role="2Oq$k0" />
                                      <node concept="2BZ7hE" id="2QSm86dnoRo" role="2OqNvi">
                                        <ref role="2WH_rO" node="2QSm86dniYO" resolve="viewportSize" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbC" id="2QSm86dnnnl" role="3uHU7B">
                                    <node concept="2OqwBi" id="2QSm86dnneN" role="3uHU7B">
                                      <node concept="2WthIp" id="2QSm86dnE5j" role="2Oq$k0" />
                                      <node concept="2BZ7hE" id="2QSm86dnneS" role="2OqNvi">
                                        <ref role="2WH_rO" node="2QSm86dngu1" resolve="viewport" />
                                      </node>
                                    </node>
                                    <node concept="10Nm6u" id="2QSm86dnnFB" role="3uHU7w" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="6h7RWbAqpFs" role="3cqZAp">
                                <node concept="2OqwBi" id="6h7RWbAqq0_" role="3clFbG">
                                  <node concept="2OqwBi" id="6h7RWbAqpFm" role="2Oq$k0">
                                    <node concept="2WthIp" id="2QSm86dnHbD" role="2Oq$k0" />
                                    <node concept="2BZ7hE" id="6h7RWbAqpFr" role="2OqNvi">
                                      <ref role="2WH_rO" node="6KOiXOpzZ4d" resolve="world" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6h7RWbAqqfJ" role="2OqNvi">
                                    <ref role="37wK5l" to="i1wt:6h7RWbAp4ZX" resolve="draw" />
                                    <node concept="0kSF2" id="6h7RWbAtiQJ" role="37wK5m">
                                      <node concept="3uibUv" id="6h7RWbAtiQM" role="0kSFW">
                                        <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                                      </node>
                                      <node concept="37vLTw" id="6h7RWbAqq$X" role="0kSFX">
                                        <ref role="3cqZAo" node="6KOiXOpz5E4" resolve="g" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="2QSm86dnBHR" role="37wK5m">
                                      <node concept="2WthIp" id="2QSm86dnBhd" role="2Oq$k0" />
                                      <node concept="2BZ7hE" id="2QSm86dnBSG" role="2OqNvi">
                                        <ref role="2WH_rO" node="2QSm86dngu1" resolve="viewport" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2QSm86duwdB" role="3cqZAp">
                                <node concept="2OqwBi" id="2QSm86duwqt" role="3clFbG">
                                  <node concept="37vLTw" id="2QSm86duwd_" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6KOiXOpz5E4" resolve="g" />
                                  </node>
                                  <node concept="liA8E" id="2QSm86dux30" role="2OqNvi">
                                    <ref role="37wK5l" to="z60i:~Graphics.drawString(java.lang.String,int,int)" resolve="drawString" />
                                    <node concept="3K4zz7" id="2QSm86duy50" role="37wK5m">
                                      <node concept="2OqwBi" id="2QSm86duyIo" role="3K4Cdx">
                                        <node concept="2WthIp" id="2QSm86duzDr" role="2Oq$k0" />
                                        <node concept="2XshWL" id="2QSm86duyIt" role="2OqNvi">
                                          <ref role="2WH_rO" node="2QSm86dtV6y" resolve="isSimulationRunning" />
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="2QSm86duzY1" role="3K4E3e">
                                        <property role="Xl_RC" value="SIMULATION RUNNING" />
                                      </node>
                                      <node concept="Xl_RD" id="2QSm86du$jr" role="3K4GZi">
                                        <property role="Xl_RC" value="SIMULATION STOPPED" />
                                      </node>
                                    </node>
                                    <node concept="3cmrfG" id="2QSm86du$HB" role="37wK5m">
                                      <property role="3cmrfH" value="10" />
                                    </node>
                                    <node concept="3cmrfG" id="2QSm86du_tC" role="37wK5m">
                                      <property role="3cmrfH" value="20" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2ZW3vV" id="6h7RWbAthtk" role="3clFbw">
                              <node concept="3uibUv" id="6h7RWbAthJA" role="2ZW6by">
                                <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                              </node>
                              <node concept="37vLTw" id="6h7RWbAth3z" role="2ZW6bz">
                                <ref role="3cqZAo" node="6KOiXOpz5E4" resolve="g" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="6h7RWbAqs9R" role="3clFbw">
                          <node concept="10Nm6u" id="6h7RWbAqsBa" role="3uHU7w" />
                          <node concept="2OqwBi" id="6h7RWbAqrEk" role="3uHU7B">
                            <node concept="2WthIp" id="2QSm86dnI1d" role="2Oq$k0" />
                            <node concept="2BZ7hE" id="6h7RWbAqrEp" role="2OqNvi">
                              <ref role="2WH_rO" node="6KOiXOpzZ4d" resolve="world" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6KOiXOpz5Ea" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KOiXOpxQ5F" role="3cqZAp">
          <node concept="2OqwBi" id="6KOiXOpxQDh" role="3clFbG">
            <node concept="37vLTw" id="6KOiXOpxQ5D" role="2Oq$k0">
              <ref role="3cqZAo" node="6KOiXOpxNnR" resolve="panel" />
            </node>
            <node concept="liA8E" id="6KOiXOpxRv_" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color)" resolve="setBackground" />
              <node concept="2ShNRf" id="6KOiXOpxRDn" role="37wK5m">
                <node concept="1pGfFk" id="6KOiXOpxSgV" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
                  <node concept="3cmrfG" id="6KOiXOpxSo7" role="37wK5m">
                    <property role="3cmrfH" value="250" />
                  </node>
                  <node concept="3cmrfG" id="6KOiXOpxSpD" role="37wK5m">
                    <property role="3cmrfH" value="250" />
                  </node>
                  <node concept="3cmrfG" id="6KOiXOpxSF9" role="37wK5m">
                    <property role="3cmrfH" value="220" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KOiXOp$2ip" role="3cqZAp">
          <node concept="37vLTI" id="6KOiXOp$2Wi" role="3clFbG">
            <node concept="37vLTw" id="6KOiXOp$3bn" role="37vLTx">
              <ref role="3cqZAo" node="6KOiXOpxNnR" resolve="panel" />
            </node>
            <node concept="2OqwBi" id="6KOiXOp$2ij" role="37vLTJ">
              <node concept="2WthIp" id="6KOiXOp$2im" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6KOiXOp$2io" role="2OqNvi">
                <ref role="2WH_rO" node="6KOiXOp$10G" resolve="myPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KOiXOpxPMi" role="3cqZAp">
          <node concept="37vLTw" id="6KOiXOpxPMg" role="3clFbG">
            <ref role="3cqZAo" node="6KOiXOpxNnR" resolve="panel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpIHi" id="6KOiXOpx_Cc" role="uR5cp">
      <node concept="3clFbS" id="6KOiXOpx_Cd" role="2VODD2">
        <node concept="3clFbF" id="6KOiXOpxAqq" role="3cqZAp">
          <node concept="37vLTI" id="6KOiXOpxBor" role="3clFbG">
            <node concept="2YIFZM" id="6KOiXOpxBBD" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2xqhHp" id="6KOiXOpxBDp" role="37wK5m" />
            </node>
            <node concept="2OqwBi" id="6KOiXOpxAwf" role="37vLTJ">
              <node concept="2WthIp" id="6KOiXOpxAqp" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6KOiXOpxADp" role="2OqNvi">
                <ref role="2WH_rO" node="6KOiXOpxyX3" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6KOiXOpymp7">
    <property role="TrG5h" value="StartSimulation" />
    <property role="2uzpH1" value="Start Simulation" />
    <property role="ngHcd" value="S" />
    <node concept="1DS2jV" id="6KOiXOpyt3D" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="6KOiXOpyt3E" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="6KOiXOpzJ4Q" role="1NuT2Z">
      <property role="TrG5h" value="solution" />
      <node concept="3Tm6S6" id="6KOiXOpzJ4R" role="1B3o_S" />
      <node concept="1oajcY" id="6KOiXOpzJ4S" role="1oa70y" />
      <node concept="3Tqbb2" id="6KOiXOpzESH" role="1tU5fm">
        <ref role="ehGHo" to="wl5u:1MxN4Cv9BXK" resolve="Solution" />
      </node>
    </node>
    <node concept="tnohg" id="6KOiXOpymp8" role="tncku">
      <node concept="3clFbS" id="6KOiXOpymp9" role="2VODD2">
        <node concept="3cpWs8" id="6KOiXOpyn4q" role="3cqZAp">
          <node concept="3cpWsn" id="6KOiXOpyn4t" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <property role="3TUv4t" value="true" />
            <node concept="1xUVSX" id="6KOiXOpyn4p" role="1tU5fm">
              <ref role="1xYkEM" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
            </node>
            <node concept="2OqwBi" id="6KOiXOpytVo" role="33vP2m">
              <node concept="2OqwBi" id="6KOiXOpynmG" role="2Oq$k0">
                <node concept="2WthIp" id="6KOiXOpyn7T" role="2Oq$k0" />
                <node concept="1DTwFV" id="6KOiXOpytqY" role="2OqNvi">
                  <ref role="2WH_rO" node="6KOiXOpyt3D" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="6KOiXOpyu0B" role="2OqNvi">
                <ref role="LR4U5" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KOiXOpyu7v" role="3cqZAp">
          <node concept="2OqwBi" id="6KOiXOpyudt" role="3clFbG">
            <node concept="37vLTw" id="6KOiXOpyu7t" role="2Oq$k0">
              <ref role="3cqZAo" node="6KOiXOpyn4t" resolve="tool" />
            </node>
            <node concept="liA8E" id="6KOiXOpyuns" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="6KOiXOpyuqa" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6h7RWbAqhnN" role="3cqZAp" />
        <node concept="3cpWs8" id="6h7RWbAqjlA" role="3cqZAp">
          <node concept="3cpWsn" id="6h7RWbAqjlB" role="3cpWs9">
            <property role="TrG5h" value="world" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6h7RWbAqjjP" role="1tU5fm">
              <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
            </node>
            <node concept="2YIFZM" id="6h7RWbAqjlC" role="33vP2m">
              <ref role="37wK5l" to="carl:4Lx5PHkTvV" resolve="buildWorld" />
              <ref role="1Pybhc" to="carl:4Lx5PHkTue" resolve="WorldBuilder" />
              <node concept="2OqwBi" id="6h7RWbAqjlD" role="37wK5m">
                <node concept="2WthIp" id="6h7RWbAqjlE" role="2Oq$k0" />
                <node concept="3gHZIF" id="6h7RWbAqjlF" role="2OqNvi">
                  <ref role="2WH_rO" node="6KOiXOpzJ4Q" resolve="solution" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yuubeIbKlR" role="3cqZAp">
          <node concept="2OqwBi" id="6yuubeIbKsQ" role="3clFbG">
            <node concept="37vLTw" id="6yuubeIbKlP" role="2Oq$k0">
              <ref role="3cqZAo" node="6KOiXOpyn4t" resolve="tool" />
            </node>
            <node concept="2XshWL" id="6yuubeIbKAP" role="2OqNvi">
              <ref role="2WH_rO" node="6KOiXOpzYpu" resolve="load" />
              <node concept="37vLTw" id="6h7RWbAqtmK" role="2XxRq1">
                <ref role="3cqZAo" node="6h7RWbAqjlB" resolve="world" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6h7RWbArjdt" role="3cqZAp">
          <node concept="2OqwBi" id="6h7RWbArjx0" role="3clFbG">
            <node concept="37vLTw" id="2QSm86dtJFQ" role="2Oq$k0">
              <ref role="3cqZAo" node="6KOiXOpyn4t" resolve="tool" />
            </node>
            <node concept="2XshWL" id="2QSm86dtJKT" role="2OqNvi">
              <ref role="2WH_rO" node="2QSm86dt9i_" resolve="runSimulation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="2QSm86dumMP" role="tmbBb">
      <node concept="3clFbS" id="2QSm86dumMQ" role="2VODD2">
        <node concept="3cpWs8" id="2QSm86dumWD" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dumWE" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <property role="3TUv4t" value="true" />
            <node concept="1xUVSX" id="2QSm86dumWF" role="1tU5fm">
              <ref role="1xYkEM" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
            </node>
            <node concept="2OqwBi" id="2QSm86dumWG" role="33vP2m">
              <node concept="2OqwBi" id="2QSm86dumWH" role="2Oq$k0">
                <node concept="2WthIp" id="2QSm86dumWI" role="2Oq$k0" />
                <node concept="1DTwFV" id="2QSm86dumWJ" role="2OqNvi">
                  <ref role="2WH_rO" node="6KOiXOpyt3D" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="2QSm86dumWK" role="2OqNvi">
                <ref role="LR4U5" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dunnQ" role="3cqZAp">
          <node concept="3fqX7Q" id="2QSm86dunnM" role="3clFbG">
            <node concept="2OqwBi" id="2QSm86dunvQ" role="3fr31v">
              <node concept="37vLTw" id="2QSm86dunoe" role="2Oq$k0">
                <ref role="3cqZAo" node="2QSm86dumWE" resolve="tool" />
              </node>
              <node concept="2XshWL" id="2QSm86dunJs" role="2OqNvi">
                <ref role="2WH_rO" node="2QSm86dtV6y" resolve="isSimulationRunning" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="6KOiXOpyvh$">
    <property role="TrG5h" value="SimulationGroup" />
    <node concept="ftmFs" id="6KOiXOpyvug" role="ftER_">
      <node concept="tCFHf" id="667ewDY5rBH" role="ftvYc">
        <ref role="tCJdB" node="667ewDY5e2t" resolve="ShowInitialGeometry" />
      </node>
      <node concept="tCFHf" id="6KOiXOpyvv$" role="ftvYc">
        <ref role="tCJdB" node="6KOiXOpymp7" resolve="StartSimulation" />
      </node>
      <node concept="tCFHf" id="2QSm86dtPgD" role="ftvYc">
        <ref role="tCJdB" node="2QSm86dtCT$" resolve="StopSimulation" />
      </node>
    </node>
    <node concept="tT9cl" id="6KOiXOpyvwR" role="2f5YQi">
      <ref role="tU$_T" to="tprs:1JdTZ5pVxeC" resolve="EditorPopupEx" />
    </node>
  </node>
  <node concept="312cEu" id="6h7RWbAGUFx">
    <property role="TrG5h" value="Viewport" />
    <node concept="2tJIrI" id="6h7RWbAGUH1" role="jymVt" />
    <node concept="312cEg" id="6h7RWbAH711" role="jymVt">
      <property role="TrG5h" value="scale" />
      <node concept="10OMs4" id="6h7RWbAH6Zt" role="1tU5fm" />
      <node concept="2$xPTn" id="6h7RWbAH7mw" role="33vP2m">
        <property role="2$xPTl" value="150.0f" />
      </node>
      <node concept="3Tm6S6" id="6h7RWbAH7pn" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2QSm86dmJnY" role="jymVt">
      <property role="TrG5h" value="xOffset" />
      <node concept="3Tm6S6" id="2QSm86dmJnZ" role="1B3o_S" />
      <node concept="10Oyi0" id="2QSm86dmJo0" role="1tU5fm" />
      <node concept="3cmrfG" id="2QSm86dmJo1" role="33vP2m">
        <property role="3cmrfH" value="100" />
      </node>
    </node>
    <node concept="312cEg" id="2QSm86dmIc_" role="jymVt">
      <property role="TrG5h" value="yOffset" />
      <node concept="3Tm6S6" id="2QSm86dmFwT" role="1B3o_S" />
      <node concept="10Oyi0" id="2QSm86dmI93" role="1tU5fm" />
      <node concept="3cmrfG" id="2QSm86dmJdJ" role="33vP2m">
        <property role="3cmrfH" value="100" />
      </node>
    </node>
    <node concept="2tJIrI" id="6h7RWbAH7nN" role="jymVt" />
    <node concept="3clFbW" id="6h7RWbAH6Os" role="jymVt">
      <node concept="3cqZAl" id="6h7RWbAH6Ou" role="3clF45" />
      <node concept="3Tm1VV" id="6h7RWbAH6Ov" role="1B3o_S" />
      <node concept="3clFbS" id="6h7RWbAH6Ow" role="3clF47">
        <node concept="3cpWs8" id="2QSm86dmrkw" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmrkz" role="3cpWs9">
            <property role="TrG5h" value="wPadding" />
            <node concept="10OMs4" id="2QSm86dmrku" role="1tU5fm" />
            <node concept="2$xPTn" id="2QSm86dmrOi" role="33vP2m">
              <property role="2$xPTl" value="0.2f" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QSm86dmnyQ" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmnyR" role="3cpWs9">
            <property role="TrG5h" value="bbX0" />
            <node concept="10OMs4" id="2QSm86dmntm" role="1tU5fm" />
            <node concept="3cpWsd" id="2QSm86dmtl_" role="33vP2m">
              <node concept="2OqwBi" id="2QSm86dmnyS" role="3uHU7B">
                <node concept="2OqwBi" id="2QSm86dmnyT" role="2Oq$k0">
                  <node concept="37vLTw" id="2QSm86dmnyU" role="2Oq$k0">
                    <ref role="3cqZAo" node="6h7RWbAImL9" resolve="worldBB" />
                  </node>
                  <node concept="2OwXpG" id="2QSm86dmnyV" role="2OqNvi">
                    <ref role="2Oxat5" to="ewbl:~AABB.lowerBound" resolve="lowerBound" />
                  </node>
                </node>
                <node concept="2OwXpG" id="2QSm86dmnyW" role="2OqNvi">
                  <ref role="2Oxat5" to="9s9o:~Vec2.x" resolve="x" />
                </node>
              </node>
              <node concept="37vLTw" id="2QSm86dmsWE" role="3uHU7w">
                <ref role="3cqZAo" node="2QSm86dmrkz" resolve="wPadding" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QSm86dmnPc" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmnPd" role="3cpWs9">
            <property role="TrG5h" value="bbY0" />
            <node concept="10OMs4" id="2QSm86dmnLl" role="1tU5fm" />
            <node concept="3cpWsd" id="2QSm86dmtH8" role="33vP2m">
              <node concept="37vLTw" id="2QSm86dmu75" role="3uHU7w">
                <ref role="3cqZAo" node="2QSm86dmrkz" resolve="wPadding" />
              </node>
              <node concept="2OqwBi" id="2QSm86dmnPe" role="3uHU7B">
                <node concept="2OqwBi" id="2QSm86dmnPf" role="2Oq$k0">
                  <node concept="37vLTw" id="2QSm86dmnPg" role="2Oq$k0">
                    <ref role="3cqZAo" node="6h7RWbAImL9" resolve="worldBB" />
                  </node>
                  <node concept="2OwXpG" id="2QSm86dmnPh" role="2OqNvi">
                    <ref role="2Oxat5" to="ewbl:~AABB.lowerBound" resolve="lowerBound" />
                  </node>
                </node>
                <node concept="2OwXpG" id="2QSm86dmnPi" role="2OqNvi">
                  <ref role="2Oxat5" to="9s9o:~Vec2.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QSm86dmoEC" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmoED" role="3cpWs9">
            <property role="TrG5h" value="bbX1" />
            <node concept="10OMs4" id="2QSm86dmow_" role="1tU5fm" />
            <node concept="3cpWs3" id="2QSm86dmunZ" role="33vP2m">
              <node concept="17qRlL" id="2QSm86dnbC7" role="3uHU7w">
                <node concept="3cmrfG" id="2QSm86dnbIJ" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="2QSm86dmuEv" role="3uHU7B">
                  <ref role="3cqZAo" node="2QSm86dmrkz" resolve="wPadding" />
                </node>
              </node>
              <node concept="2OqwBi" id="2QSm86dmoEE" role="3uHU7B">
                <node concept="2OqwBi" id="2QSm86dmoEF" role="2Oq$k0">
                  <node concept="37vLTw" id="2QSm86dmoEG" role="2Oq$k0">
                    <ref role="3cqZAo" node="6h7RWbAImL9" resolve="worldBB" />
                  </node>
                  <node concept="2OwXpG" id="2QSm86dmoEH" role="2OqNvi">
                    <ref role="2Oxat5" to="ewbl:~AABB.upperBound" resolve="upperBound" />
                  </node>
                </node>
                <node concept="2OwXpG" id="2QSm86dmoEI" role="2OqNvi">
                  <ref role="2Oxat5" to="9s9o:~Vec2.x" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QSm86dmoRV" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmoRW" role="3cpWs9">
            <property role="TrG5h" value="bbY1" />
            <node concept="10OMs4" id="2QSm86dmoMP" role="1tU5fm" />
            <node concept="3cpWs3" id="2QSm86dmvfC" role="33vP2m">
              <node concept="37vLTw" id="2QSm86dmvxS" role="3uHU7w">
                <ref role="3cqZAo" node="2QSm86dmrkz" resolve="wPadding" />
              </node>
              <node concept="2OqwBi" id="2QSm86dmoRX" role="3uHU7B">
                <node concept="2OqwBi" id="2QSm86dmoRY" role="2Oq$k0">
                  <node concept="37vLTw" id="2QSm86dmoRZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6h7RWbAImL9" resolve="worldBB" />
                  </node>
                  <node concept="2OwXpG" id="2QSm86dmoS0" role="2OqNvi">
                    <ref role="2Oxat5" to="ewbl:~AABB.upperBound" resolve="upperBound" />
                  </node>
                </node>
                <node concept="2OwXpG" id="2QSm86dmoS1" role="2OqNvi">
                  <ref role="2Oxat5" to="9s9o:~Vec2.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6h7RWbAIp6I" role="3cqZAp">
          <node concept="2OqwBi" id="6h7RWbAIp6F" role="3clFbG">
            <node concept="10M0yZ" id="6h7RWbAIp6G" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
            </node>
            <node concept="liA8E" id="6h7RWbAIp6H" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="6h7RWbAI_co" role="37wK5m">
                <node concept="37vLTw" id="6h7RWbAI_kd" role="3uHU7w">
                  <ref role="3cqZAo" node="6h7RWbAInwt" resolve="height" />
                </node>
                <node concept="3cpWs3" id="6h7RWbAI$Ag" role="3uHU7B">
                  <node concept="3cpWs3" id="6h7RWbAIzhI" role="3uHU7B">
                    <node concept="3cpWs3" id="6h7RWbAIyeo" role="3uHU7B">
                      <node concept="3cpWs3" id="6h7RWbAIwGa" role="3uHU7B">
                        <node concept="3cpWs3" id="6h7RWbAIw3O" role="3uHU7B">
                          <node concept="3cpWs3" id="6h7RWbAIueU" role="3uHU7B">
                            <node concept="3cpWs3" id="6h7RWbAItCW" role="3uHU7B">
                              <node concept="3cpWs3" id="6h7RWbAIrvC" role="3uHU7B">
                                <node concept="3cpWs3" id="6h7RWbAIqW2" role="3uHU7B">
                                  <node concept="3cpWs3" id="6h7RWbAIpJW" role="3uHU7B">
                                    <node concept="Xl_RD" id="6h7RWbAIpel" role="3uHU7B">
                                      <property role="Xl_RC" value="Viewport: " />
                                    </node>
                                    <node concept="37vLTw" id="2QSm86dmnyX" role="3uHU7w">
                                      <ref role="3cqZAo" node="2QSm86dmnyR" resolve="bbX0" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="6h7RWbAIr2E" role="3uHU7w">
                                    <property role="Xl_RC" value="|" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2QSm86dmnPj" role="3uHU7w">
                                  <ref role="3cqZAo" node="2QSm86dmnPd" resolve="bbY0" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="6h7RWbAItJ$" role="3uHU7w">
                                <property role="Xl_RC" value=", " />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2QSm86dmoEJ" role="3uHU7w">
                              <ref role="3cqZAo" node="2QSm86dmoED" resolve="bbX1" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6h7RWbAIwas" role="3uHU7w">
                            <property role="Xl_RC" value="|" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2QSm86dmoS2" role="3uHU7w">
                          <ref role="3cqZAo" node="2QSm86dmoRW" resolve="bbY1" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6h7RWbAIyl0" role="3uHU7w">
                        <property role="Xl_RC" value="   canvas=" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6h7RWbAIzvn" role="3uHU7w">
                      <ref role="3cqZAo" node="6h7RWbAImPu" resolve="width" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6h7RWbAI$GS" role="3uHU7w">
                    <property role="Xl_RC" value="|" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2QSm86dmn7t" role="3cqZAp" />
        <node concept="3cpWs8" id="2QSm86dmqC_" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmqCA" role="3cpWs9">
            <property role="TrG5h" value="wdx" />
            <node concept="10OMs4" id="2QSm86dmqwG" role="1tU5fm" />
            <node concept="3cpWsd" id="2QSm86dmqCB" role="33vP2m">
              <node concept="37vLTw" id="2QSm86dmqCC" role="3uHU7w">
                <ref role="3cqZAo" node="2QSm86dmnyR" resolve="bbX0" />
              </node>
              <node concept="37vLTw" id="2QSm86dmqCD" role="3uHU7B">
                <ref role="3cqZAo" node="2QSm86dmoED" resolve="bbX1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QSm86dmxim" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmxin" role="3cpWs9">
            <property role="TrG5h" value="xScale" />
            <node concept="10OMs4" id="2QSm86dmx0t" role="1tU5fm" />
            <node concept="FJ1c_" id="2QSm86dmxio" role="33vP2m">
              <node concept="37vLTw" id="2QSm86dmxip" role="3uHU7B">
                <ref role="3cqZAo" node="6h7RWbAImPu" resolve="width" />
              </node>
              <node concept="37vLTw" id="2QSm86dmxiq" role="3uHU7w">
                <ref role="3cqZAo" node="2QSm86dmqCA" resolve="wdx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QSm86dmxoZ" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmxp0" role="3cpWs9">
            <property role="TrG5h" value="wdy" />
            <node concept="10OMs4" id="2QSm86dmxp1" role="1tU5fm" />
            <node concept="3cpWsd" id="2QSm86dmxp2" role="33vP2m">
              <node concept="37vLTw" id="2QSm86dmy5U" role="3uHU7w">
                <ref role="3cqZAo" node="2QSm86dmnPd" resolve="bbY0" />
              </node>
              <node concept="37vLTw" id="2QSm86dmxWF" role="3uHU7B">
                <ref role="3cqZAo" node="2QSm86dmoRW" resolve="bbY1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QSm86dmxp5" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmxp6" role="3cpWs9">
            <property role="TrG5h" value="yScale" />
            <node concept="10OMs4" id="2QSm86dmxp7" role="1tU5fm" />
            <node concept="FJ1c_" id="2QSm86dmxp8" role="33vP2m">
              <node concept="37vLTw" id="2QSm86dmy_u" role="3uHU7B">
                <ref role="3cqZAo" node="6h7RWbAInwt" resolve="height" />
              </node>
              <node concept="37vLTw" id="2QSm86dmxpa" role="3uHU7w">
                <ref role="3cqZAo" node="2QSm86dmxp0" resolve="wdy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dmyRW" role="3cqZAp">
          <node concept="37vLTI" id="2QSm86dmzMd" role="3clFbG">
            <node concept="2YIFZM" id="2QSm86dn3fV" role="37vLTx">
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <ref role="37wK5l" to="wyt6:~Math.min(float,float)" resolve="min" />
              <node concept="37vLTw" id="2QSm86dn3fW" role="37wK5m">
                <ref role="3cqZAo" node="2QSm86dmxin" resolve="xScale" />
              </node>
              <node concept="37vLTw" id="2QSm86dn3fX" role="37wK5m">
                <ref role="3cqZAo" node="2QSm86dmxp6" resolve="yScale" />
              </node>
            </node>
            <node concept="2OqwBi" id="2QSm86dmz4r" role="37vLTJ">
              <node concept="Xjq3P" id="2QSm86dmyRU" role="2Oq$k0" />
              <node concept="2OwXpG" id="2QSm86dmzi6" role="2OqNvi">
                <ref role="2Oxat5" node="6h7RWbAH711" resolve="scale" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2QSm86dm_FL" role="3cqZAp" />
        <node concept="3cpWs8" id="2QSm86dmDGr" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmDGs" role="3cpWs9">
            <property role="TrG5h" value="wxm" />
            <node concept="10OMs4" id="2QSm86dmDGt" role="1tU5fm" />
            <node concept="FJ1c_" id="2QSm86dmDGu" role="33vP2m">
              <node concept="3cmrfG" id="2QSm86dmDGv" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="1eOMI4" id="2QSm86dmDGw" role="3uHU7B">
                <node concept="3cpWs3" id="2QSm86dmDGx" role="1eOMHV">
                  <node concept="37vLTw" id="2QSm86dmDGy" role="3uHU7w">
                    <ref role="3cqZAo" node="2QSm86dmoED" resolve="bbX1" />
                  </node>
                  <node concept="37vLTw" id="2QSm86dmDGz" role="3uHU7B">
                    <ref role="3cqZAo" node="2QSm86dmnyR" resolve="bbX0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dmKCn" role="3cqZAp">
          <node concept="37vLTI" id="2QSm86dmMqj" role="3clFbG">
            <node concept="3cpWsd" id="2QSm86dmOIc" role="37vLTx">
              <node concept="1eOMI4" id="2QSm86dmR5e" role="3uHU7w">
                <node concept="10QFUN" id="2QSm86dmR5b" role="1eOMHV">
                  <node concept="10Oyi0" id="2QSm86dmREb" role="10QFUM" />
                  <node concept="1eOMI4" id="2QSm86dmQRq" role="10QFUP">
                    <node concept="17qRlL" id="2QSm86dmPHE" role="1eOMHV">
                      <node concept="37vLTw" id="2QSm86dmPOm" role="3uHU7w">
                        <ref role="3cqZAo" node="6h7RWbAH711" resolve="scale" />
                      </node>
                      <node concept="37vLTw" id="2QSm86dmOOY" role="3uHU7B">
                        <ref role="3cqZAo" node="2QSm86dmDGs" resolve="wxm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="2QSm86dmN58" role="3uHU7B">
                <node concept="FJ1c_" id="2QSm86dmNYH" role="1eOMHV">
                  <node concept="3cmrfG" id="2QSm86dmO5l" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="2QSm86dmNou" role="3uHU7B">
                    <ref role="3cqZAo" node="6h7RWbAImPu" resolve="width" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2QSm86dmKSX" role="37vLTJ">
              <node concept="Xjq3P" id="2QSm86dmKCl" role="2Oq$k0" />
              <node concept="2OwXpG" id="2QSm86dmL$K" role="2OqNvi">
                <ref role="2Oxat5" node="2QSm86dmJnY" resolve="xOffset" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QSm86dmC4K" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dmC4L" role="3cpWs9">
            <property role="TrG5h" value="wym" />
            <node concept="10OMs4" id="2QSm86dmBWJ" role="1tU5fm" />
            <node concept="FJ1c_" id="2QSm86dmDcE" role="33vP2m">
              <node concept="3cmrfG" id="2QSm86dmDji" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="1eOMI4" id="2QSm86dmCZS" role="3uHU7B">
                <node concept="3cpWs3" id="2QSm86dmC4M" role="1eOMHV">
                  <node concept="37vLTw" id="2QSm86dmEL1" role="3uHU7w">
                    <ref role="3cqZAo" node="2QSm86dmoRW" resolve="bbY1" />
                  </node>
                  <node concept="37vLTw" id="2QSm86dmEhq" role="3uHU7B">
                    <ref role="3cqZAo" node="2QSm86dmnPd" resolve="bbY0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dmSnt" role="3cqZAp">
          <node concept="37vLTI" id="2QSm86dmSnu" role="3clFbG">
            <node concept="3cpWs3" id="2QSm86dmUIt" role="37vLTx">
              <node concept="1eOMI4" id="2QSm86dmSnB" role="3uHU7B">
                <node concept="FJ1c_" id="2QSm86dmSnC" role="1eOMHV">
                  <node concept="3cmrfG" id="2QSm86dmSnD" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="2QSm86dmTZc" role="3uHU7B">
                    <ref role="3cqZAo" node="6h7RWbAInwt" resolve="height" />
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="2QSm86dmSnw" role="3uHU7w">
                <node concept="10QFUN" id="2QSm86dmSnx" role="1eOMHV">
                  <node concept="10Oyi0" id="2QSm86dmSny" role="10QFUM" />
                  <node concept="1eOMI4" id="2QSm86dmSnz" role="10QFUP">
                    <node concept="17qRlL" id="2QSm86dmSn$" role="1eOMHV">
                      <node concept="37vLTw" id="2QSm86dmSn_" role="3uHU7w">
                        <ref role="3cqZAo" node="6h7RWbAH711" resolve="scale" />
                      </node>
                      <node concept="37vLTw" id="2QSm86dmUj3" role="3uHU7B">
                        <ref role="3cqZAo" node="2QSm86dmC4L" resolve="wym" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2QSm86dmSnF" role="37vLTJ">
              <node concept="Xjq3P" id="2QSm86dmSnG" role="2Oq$k0" />
              <node concept="2OwXpG" id="2QSm86dmTF9" role="2OqNvi">
                <ref role="2Oxat5" node="2QSm86dmIc_" resolve="yOffset" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6h7RWbAImL9" role="3clF46">
        <property role="TrG5h" value="worldBB" />
        <node concept="3uibUv" id="6h7RWbAImL8" role="1tU5fm">
          <ref role="3uigEE" to="ewbl:~AABB" resolve="AABB" />
        </node>
      </node>
      <node concept="37vLTG" id="6h7RWbAImPu" role="3clF46">
        <property role="TrG5h" value="width" />
        <node concept="10Oyi0" id="6h7RWbAInvC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6h7RWbAInwt" role="3clF46">
        <property role="TrG5h" value="height" />
        <node concept="10Oyi0" id="6h7RWbAInEG" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6h7RWbAH6Q8" role="jymVt" />
    <node concept="3Tm1VV" id="6h7RWbAGUFy" role="1B3o_S" />
    <node concept="3uibUv" id="6h7RWbAGUGD" role="EKbjA">
      <ref role="3uigEE" to="i1wt:6h7RWbAGOep" resolve="IViewport" />
    </node>
    <node concept="3clFb_" id="6h7RWbAHFU4" role="jymVt">
      <property role="TrG5h" value="localToGraphics" />
      <node concept="3Tm1VV" id="6h7RWbAHFU6" role="1B3o_S" />
      <node concept="10Oyi0" id="6h7RWbAHFU7" role="3clF45" />
      <node concept="37vLTG" id="6h7RWbAHFU8" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10OMs4" id="6h7RWbAHFU9" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6h7RWbAHFUa" role="3clF47">
        <node concept="3clFbF" id="6h7RWbAHGMC" role="3cqZAp">
          <node concept="10QFUN" id="6h7RWbAHJjF" role="3clFbG">
            <node concept="10Oyi0" id="6h7RWbAHJzN" role="10QFUM" />
            <node concept="1eOMI4" id="6h7RWbAHIDM" role="10QFUP">
              <node concept="17qRlL" id="6h7RWbAHHjB" role="1eOMHV">
                <node concept="37vLTw" id="6h7RWbAHHqj" role="3uHU7w">
                  <ref role="3cqZAo" node="6h7RWbAH711" resolve="scale" />
                </node>
                <node concept="37vLTw" id="6h7RWbAHGMB" role="3uHU7B">
                  <ref role="3cqZAo" node="6h7RWbAHFU8" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6h7RWbAHFUb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6h7RWbAHGxD" role="jymVt" />
    <node concept="3clFb_" id="6h7RWbAHkBF" role="jymVt">
      <property role="TrG5h" value="localToGraphics" />
      <node concept="3Tm1VV" id="6h7RWbAHkBH" role="1B3o_S" />
      <node concept="3uibUv" id="6h7RWbAHkBI" role="3clF45">
        <ref role="3uigEE" to="i1wt:6h7RWbAGXpN" resolve="Coord" />
      </node>
      <node concept="37vLTG" id="6h7RWbAHkBJ" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10OMs4" id="6h7RWbAHkBK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6h7RWbAHkBL" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10OMs4" id="6h7RWbAHkBM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6h7RWbAHkBN" role="3clF47">
        <node concept="3cpWs8" id="6h7RWbAHm6v" role="3cqZAp">
          <node concept="3cpWsn" id="6h7RWbAHm6w" role="3cpWs9">
            <property role="TrG5h" value="xg" />
            <node concept="10Oyi0" id="6h7RWbAHm6x" role="1tU5fm" />
            <node concept="1eOMI4" id="6h7RWbAHm6z" role="33vP2m">
              <node concept="10QFUN" id="6h7RWbAHm6$" role="1eOMHV">
                <node concept="10Oyi0" id="6h7RWbAHm6_" role="10QFUM" />
                <node concept="1eOMI4" id="6h7RWbAHm6A" role="10QFUP">
                  <node concept="17qRlL" id="6h7RWbAHm6B" role="1eOMHV">
                    <node concept="37vLTw" id="6h7RWbAHm6C" role="3uHU7w">
                      <ref role="3cqZAo" node="6h7RWbAH711" resolve="scale" />
                    </node>
                    <node concept="37vLTw" id="6h7RWbAHm6D" role="3uHU7B">
                      <ref role="3cqZAo" node="6h7RWbAHkBJ" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6h7RWbAHm6F" role="3cqZAp">
          <node concept="3cpWsn" id="6h7RWbAHm6G" role="3cpWs9">
            <property role="TrG5h" value="yg" />
            <node concept="10Oyi0" id="6h7RWbAHm6H" role="1tU5fm" />
            <node concept="1eOMI4" id="6h7RWbAHm6J" role="33vP2m">
              <node concept="10QFUN" id="6h7RWbAHm6K" role="1eOMHV">
                <node concept="10Oyi0" id="6h7RWbAHm6L" role="10QFUM" />
                <node concept="1eOMI4" id="6h7RWbAHm6M" role="10QFUP">
                  <node concept="17qRlL" id="6h7RWbAHm6N" role="1eOMHV">
                    <node concept="37vLTw" id="6h7RWbAHm6O" role="3uHU7w">
                      <ref role="3cqZAo" node="6h7RWbAH711" resolve="scale" />
                    </node>
                    <node concept="37vLTw" id="6h7RWbAHm6P" role="3uHU7B">
                      <ref role="3cqZAo" node="6h7RWbAHkBL" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6h7RWbAHkBQ" role="3cqZAp">
          <node concept="2ShNRf" id="6h7RWbAHlhN" role="3clFbG">
            <node concept="1pGfFk" id="6h7RWbAHm63" role="2ShVmc">
              <ref role="37wK5l" to="i1wt:6h7RWbAGXuu" resolve="Coord" />
              <node concept="37vLTw" id="6h7RWbAHmIA" role="37wK5m">
                <ref role="3cqZAo" node="6h7RWbAHm6w" resolve="xg" />
              </node>
              <node concept="37vLTw" id="6h7RWbAHmQ2" role="37wK5m">
                <ref role="3cqZAo" node="6h7RWbAHm6G" resolve="yg" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6h7RWbAHkBO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6h7RWbAHl6y" role="jymVt" />
    <node concept="3clFb_" id="6h7RWbAGZUa" role="jymVt">
      <property role="TrG5h" value="worldToGraphics" />
      <node concept="3Tm1VV" id="6h7RWbAGZUc" role="1B3o_S" />
      <node concept="3uibUv" id="6h7RWbAGZUd" role="3clF45">
        <ref role="3uigEE" to="i1wt:6h7RWbAGXpN" resolve="Coord" />
      </node>
      <node concept="37vLTG" id="6h7RWbAGZUe" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10OMs4" id="6h7RWbAGZUf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6h7RWbAGZUg" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10OMs4" id="6h7RWbAGZUh" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6h7RWbAGZUi" role="3clF47">
        <node concept="3cpWs8" id="6h7RWbAHeon" role="3cqZAp">
          <node concept="3cpWsn" id="6h7RWbAHeoo" role="3cpWs9">
            <property role="TrG5h" value="xg" />
            <node concept="10Oyi0" id="6h7RWbAHemI" role="1tU5fm" />
            <node concept="3cpWs3" id="6h7RWbAHeop" role="33vP2m">
              <node concept="1eOMI4" id="6h7RWbAHeoq" role="3uHU7w">
                <node concept="10QFUN" id="6h7RWbAHeor" role="1eOMHV">
                  <node concept="10Oyi0" id="6h7RWbAHeos" role="10QFUM" />
                  <node concept="1eOMI4" id="6h7RWbAHeot" role="10QFUP">
                    <node concept="17qRlL" id="6h7RWbAHeou" role="1eOMHV">
                      <node concept="37vLTw" id="6h7RWbAHeov" role="3uHU7w">
                        <ref role="3cqZAo" node="6h7RWbAH711" resolve="scale" />
                      </node>
                      <node concept="37vLTw" id="6h7RWbAHeow" role="3uHU7B">
                        <ref role="3cqZAo" node="6h7RWbAGZUe" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2QSm86dmV4W" role="3uHU7B">
                <ref role="3cqZAo" node="2QSm86dmJnY" resolve="xOffset" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6h7RWbAHeOQ" role="3cqZAp">
          <node concept="3cpWsn" id="6h7RWbAHeOR" role="3cpWs9">
            <property role="TrG5h" value="yg" />
            <node concept="10Oyi0" id="6h7RWbAHeOr" role="1tU5fm" />
            <node concept="3cpWsd" id="6h7RWbAHeOS" role="33vP2m">
              <node concept="1eOMI4" id="6h7RWbAHeOT" role="3uHU7w">
                <node concept="10QFUN" id="6h7RWbAHeOU" role="1eOMHV">
                  <node concept="10Oyi0" id="6h7RWbAHeOV" role="10QFUM" />
                  <node concept="1eOMI4" id="6h7RWbAHeOW" role="10QFUP">
                    <node concept="17qRlL" id="6h7RWbAHeOX" role="1eOMHV">
                      <node concept="37vLTw" id="6h7RWbAHeOY" role="3uHU7w">
                        <ref role="3cqZAo" node="6h7RWbAH711" resolve="scale" />
                      </node>
                      <node concept="37vLTw" id="6h7RWbAHeOZ" role="3uHU7B">
                        <ref role="3cqZAo" node="6h7RWbAGZUg" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2QSm86dmVN9" role="3uHU7B">
                <ref role="3cqZAo" node="2QSm86dmIc_" resolve="yOffset" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6h7RWbAH7$u" role="3cqZAp">
          <node concept="2ShNRf" id="6h7RWbAH7$o" role="3clFbG">
            <node concept="1pGfFk" id="6h7RWbAH8oJ" role="2ShVmc">
              <ref role="37wK5l" to="i1wt:6h7RWbAGXuu" resolve="Coord" />
              <node concept="37vLTw" id="6h7RWbAHeoy" role="37wK5m">
                <ref role="3cqZAo" node="6h7RWbAHeoo" resolve="xg" />
              </node>
              <node concept="37vLTw" id="6h7RWbAHeP1" role="37wK5m">
                <ref role="3cqZAo" node="6h7RWbAHeOR" resolve="yg" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6h7RWbAGZUj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="2QSm86dtCT$">
    <property role="TrG5h" value="StopSimulation" />
    <property role="2uzpH1" value="Stop Simulation" />
    <property role="ngHcd" value="S" />
    <node concept="1DS2jV" id="2QSm86dtCT_" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="2QSm86dtCTA" role="1oa70y" />
    </node>
    <node concept="tnohg" id="2QSm86dtCTF" role="tncku">
      <node concept="3clFbS" id="2QSm86dtCTG" role="2VODD2">
        <node concept="3cpWs8" id="2QSm86dtCTH" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dtCTI" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <property role="3TUv4t" value="true" />
            <node concept="1xUVSX" id="2QSm86dtCTJ" role="1tU5fm">
              <ref role="1xYkEM" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
            </node>
            <node concept="2OqwBi" id="2QSm86dtCTK" role="33vP2m">
              <node concept="2OqwBi" id="2QSm86dtCTL" role="2Oq$k0">
                <node concept="2WthIp" id="2QSm86dtCTM" role="2Oq$k0" />
                <node concept="1DTwFV" id="2QSm86dtCTN" role="2OqNvi">
                  <ref role="2WH_rO" node="2QSm86dtCT_" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="2QSm86dtCTO" role="2OqNvi">
                <ref role="LR4U5" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dtCTP" role="3cqZAp">
          <node concept="2OqwBi" id="2QSm86dtCTQ" role="3clFbG">
            <node concept="37vLTw" id="2QSm86dtCTR" role="2Oq$k0">
              <ref role="3cqZAo" node="2QSm86dtCTI" resolve="tool" />
            </node>
            <node concept="liA8E" id="2QSm86dtCTS" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="2QSm86dtCTT" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dtCU2" role="3cqZAp">
          <node concept="2OqwBi" id="2QSm86dtCU3" role="3clFbG">
            <node concept="37vLTw" id="2QSm86dtCU4" role="2Oq$k0">
              <ref role="3cqZAo" node="2QSm86dtCTI" resolve="tool" />
            </node>
            <node concept="2XshWL" id="2QSm86dtCU5" role="2OqNvi">
              <ref role="2WH_rO" node="2QSm86dttGQ" resolve="stopSimulation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="2QSm86dtSpB" role="tmbBb">
      <node concept="3clFbS" id="2QSm86dtSpC" role="2VODD2">
        <node concept="3cpWs8" id="2QSm86dtSvF" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86dtSvG" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <property role="3TUv4t" value="true" />
            <node concept="1xUVSX" id="2QSm86dtSvH" role="1tU5fm">
              <ref role="1xYkEM" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
            </node>
            <node concept="2OqwBi" id="2QSm86dtSvI" role="33vP2m">
              <node concept="2OqwBi" id="2QSm86dtSvJ" role="2Oq$k0">
                <node concept="2WthIp" id="2QSm86dtSvK" role="2Oq$k0" />
                <node concept="1DTwFV" id="2QSm86dtSvL" role="2OqNvi">
                  <ref role="2WH_rO" node="2QSm86dtCT_" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="2QSm86dtSvM" role="2OqNvi">
                <ref role="LR4U5" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dtX20" role="3cqZAp">
          <node concept="2OqwBi" id="2QSm86dtX7F" role="3clFbG">
            <node concept="37vLTw" id="2QSm86dtX1Y" role="2Oq$k0">
              <ref role="3cqZAo" node="2QSm86dtSvG" resolve="tool" />
            </node>
            <node concept="2XshWL" id="2QSm86dtXcd" role="2OqNvi">
              <ref role="2WH_rO" node="2QSm86dtV6y" resolve="isSimulationRunning" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="qq9qg" id="1MxN4CuZyP0">
    <property role="TrG5h" value="PhysicsInterpreter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="qq9P1" id="41y0QLyZ3QU" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="wl5u:1MxN4CuYPDI" resolve="ParamRef" />
      <node concept="3vetai" id="41y0QLyZ4jh" role="3vQZUl">
        <node concept="rqRoa" id="41y0QLyZ4jv" role="3vdyny">
          <ref role="rqRob" to="wl5u:1MxN4CuYPEl" resolve="arg" />
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="1MxN4Cv0TF7" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="wl5u:4Lx5PHoT0U" resolve="Parameter" />
      <node concept="3vetai" id="1MxN4Cv0TFZ" role="3vQZUl">
        <node concept="3EllGN" id="1MxN4Cv0U2Z" role="3vdyny">
          <node concept="oxGPV" id="1MxN4Cv0U4j" role="3ElVtu" />
          <node concept="TvHiN" id="1MxN4Cv0TGh" role="3ElQJh" />
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="1MxN4CuZYf1" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="wl5u:4Lx5PHoWyK" resolve="ParameterValue" />
      <node concept="3dA_Gj" id="1MxN4CuZYgn" role="3vQZUl">
        <node concept="9aQIb" id="1MxN4CuZYgp" role="3vcmbn">
          <node concept="3clFbS" id="1MxN4CuZYgr" role="9aQI4">
            <node concept="3cpWs8" id="1MxN4CuZYgR" role="3cqZAp">
              <node concept="3cpWsn" id="1MxN4CuZYgS" role="3cpWs9">
                <property role="TrG5h" value="v" />
                <node concept="3uibUv" id="1MxN4CuZYgQ" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="rqRoa" id="1MxN4CuZYgT" role="33vP2m">
                  <ref role="rqRob" to="wl5u:6KOiXOpsuzQ" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MxN4CuZYmf" role="3cqZAp">
              <node concept="37vLTI" id="1MxN4CuZZ41" role="3clFbG">
                <node concept="37vLTw" id="1MxN4CuZZ5F" role="37vLTx">
                  <ref role="3cqZAo" node="1MxN4CuZYgS" resolve="v" />
                </node>
                <node concept="3EllGN" id="1MxN4CuZYEM" role="37vLTJ">
                  <node concept="2OqwBi" id="1MxN4CuZYNm" role="3ElVtu">
                    <node concept="oxGPV" id="1MxN4CuZYG1" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1MxN4CuZYX7" role="2OqNvi">
                      <ref role="3Tt5mk" to="wl5u:4Lx5PHoWyL" resolve="param" />
                    </node>
                  </node>
                  <node concept="TvHiN" id="1MxN4CuZYmx" role="3ElQJh" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1MxN4CuZZaZ" role="3cqZAp">
              <node concept="37vLTw" id="1MxN4CuZZcJ" role="3cqZAk">
                <ref role="3cqZAo" node="1MxN4CuZYgS" resolve="v" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="lHU7p" id="1MxN4CuZyP5" role="qq9xR" />
  </node>
  <node concept="sE7Ow" id="667ewDY5e2t">
    <property role="TrG5h" value="ShowInitialGeometry" />
    <property role="2uzpH1" value="Show Initial Geometry" />
    <property role="ngHcd" value="I" />
    <node concept="1DS2jV" id="667ewDY5e2u" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="667ewDY5e2v" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="667ewDY5e2w" role="1NuT2Z">
      <property role="TrG5h" value="solution" />
      <node concept="3Tm6S6" id="667ewDY5e2x" role="1B3o_S" />
      <node concept="1oajcY" id="667ewDY5e2y" role="1oa70y" />
      <node concept="3Tqbb2" id="667ewDY5e2z" role="1tU5fm">
        <ref role="ehGHo" to="wl5u:1MxN4Cv9BXK" resolve="Solution" />
      </node>
    </node>
    <node concept="tnohg" id="667ewDY5e2$" role="tncku">
      <node concept="3clFbS" id="667ewDY5e2_" role="2VODD2">
        <node concept="3cpWs8" id="667ewDY5e2A" role="3cqZAp">
          <node concept="3cpWsn" id="667ewDY5e2B" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <property role="3TUv4t" value="true" />
            <node concept="1xUVSX" id="667ewDY5e2C" role="1tU5fm">
              <ref role="1xYkEM" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
            </node>
            <node concept="2OqwBi" id="667ewDY5e2D" role="33vP2m">
              <node concept="2OqwBi" id="667ewDY5e2E" role="2Oq$k0">
                <node concept="2WthIp" id="667ewDY5e2F" role="2Oq$k0" />
                <node concept="1DTwFV" id="667ewDY5e2G" role="2OqNvi">
                  <ref role="2WH_rO" node="667ewDY5e2u" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="667ewDY5e2H" role="2OqNvi">
                <ref role="LR4U5" node="6KOiXOpxxuO" resolve="PhysicsSimulation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="667ewDY5e2I" role="3cqZAp">
          <node concept="2OqwBi" id="667ewDY5e2J" role="3clFbG">
            <node concept="37vLTw" id="667ewDY5e2K" role="2Oq$k0">
              <ref role="3cqZAo" node="667ewDY5e2B" resolve="tool" />
            </node>
            <node concept="liA8E" id="667ewDY5e2L" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="667ewDY5e2M" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="667ewDY5e2O" role="3cqZAp">
          <node concept="3cpWsn" id="667ewDY5e2P" role="3cpWs9">
            <property role="TrG5h" value="world" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="667ewDY5e2Q" role="1tU5fm">
              <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
            </node>
            <node concept="2YIFZM" id="667ewDY5e2R" role="33vP2m">
              <ref role="37wK5l" to="carl:4Lx5PHkTvV" resolve="buildWorld" />
              <ref role="1Pybhc" to="carl:4Lx5PHkTue" resolve="WorldBuilder" />
              <node concept="2OqwBi" id="667ewDY5e2S" role="37wK5m">
                <node concept="2WthIp" id="667ewDY5e2T" role="2Oq$k0" />
                <node concept="3gHZIF" id="667ewDY5e2U" role="2OqNvi">
                  <ref role="2WH_rO" node="667ewDY5e2w" resolve="solution" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="667ewDY5e2V" role="3cqZAp">
          <node concept="2OqwBi" id="667ewDY5e2W" role="3clFbG">
            <node concept="37vLTw" id="667ewDY5e2X" role="2Oq$k0">
              <ref role="3cqZAo" node="667ewDY5e2B" resolve="tool" />
            </node>
            <node concept="2XshWL" id="667ewDY5e2Y" role="2OqNvi">
              <ref role="2WH_rO" node="6KOiXOpzYpu" resolve="load" />
              <node concept="37vLTw" id="667ewDY5e2Z" role="2XxRq1">
                <ref role="3cqZAo" node="667ewDY5e2P" resolve="world" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>
