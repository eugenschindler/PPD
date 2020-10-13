<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:78f6e3a3-3a3d-4298-b0df-7510c56bffaa(org.itemis.phydev.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="hdfp" ref="856b26ba-05ad-49b3-8b5b-d034f8f7a4a0/java:org.jbox2d.dynamics(org.itemis.phydev.runtime/)" />
    <import index="9s9o" ref="856b26ba-05ad-49b3-8b5b-d034f8f7a4a0/java:org.jbox2d.common(org.itemis.phydev.runtime/)" />
    <import index="q7of" ref="856b26ba-05ad-49b3-8b5b-d034f8f7a4a0/java:org.jbox2d.collision.shapes(org.itemis.phydev.runtime/)" />
    <import index="elf6" ref="856b26ba-05ad-49b3-8b5b-d034f8f7a4a0/java:org.jbox2d.dynamics.joints(org.itemis.phydev.runtime/)" />
    <import index="wl5u" ref="r:4e6d5887-bd72-487b-8a33-9a312d03f1ef(org.itemis.phydev.structure)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="9xe4" ref="r:50fa461b-2709-4d24-97af-6b81f8fba7f2(org.itemis.phydev.plugin.plugin)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="i1wt" ref="r:094c7499-ed0f-433f-9bb4-33e921f96162(org.itemis.phydev.runtime)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5">
        <reference id="5299096511375896640" name="superConcept" index="3eA5LN" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="6612597108003615641" name="jetbrains.mps.baseLanguage.javadoc.structure.HTMLElement" flags="ng" index="2U$1Ah">
        <property id="6612597108003615642" name="name" index="2U$1Ai" />
        <child id="6612597108003615643" name="line" index="2U$1Aj" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes">
      <concept id="8077936094962911282" name="jetbrains.mps.lang.scopes.structure.ParentScope" flags="nn" index="iy90A" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
      </concept>
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176903168877" name="jetbrains.mps.baseLanguage.collections.structure.UnionOperation" flags="nn" index="4Tj9Z" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="4Lx5PHkTue">
    <property role="TrG5h" value="WorldBuilder" />
    <node concept="3Tm1VV" id="4Lx5PHkTuf" role="1B3o_S" />
    <node concept="2tJIrI" id="6h7RWbAqfi9" role="jymVt" />
    <node concept="2YIFZL" id="4Lx5PHkTvV" role="jymVt">
      <property role="TrG5h" value="buildWorld" />
      <node concept="3clFbS" id="4Lx5PHkTvY" role="3clF47">
        <node concept="3clFbF" id="4Lx5PHnLAY" role="3cqZAp">
          <node concept="2OqwBi" id="4Lx5PHnLAV" role="3clFbG">
            <node concept="10M0yZ" id="4Lx5PHnLAW" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
            </node>
            <node concept="liA8E" id="4Lx5PHnLAX" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="Xl_RD" id="4Lx5PHnLLv" role="37wK5m">
                <property role="Xl_RC" value="-------------------------" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Lx5PHkTww" role="3cqZAp">
          <node concept="2OqwBi" id="4Lx5PHkTwt" role="3clFbG">
            <node concept="10M0yZ" id="4Lx5PHkTwu" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
            </node>
            <node concept="liA8E" id="4Lx5PHkTwv" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="Xl_RD" id="4Lx5PHkTwI" role="37wK5m">
                <property role="Xl_RC" value="Welcome to WorldBuilder!" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6KOiXOpujm8" role="3cqZAp" />
        <node concept="3clFbH" id="6KOiXOpuvgJ" role="3cqZAp" />
        <node concept="3SKdUt" id="ygdbevuLs6" role="3cqZAp">
          <node concept="1PaTwC" id="59FNqAPCINv" role="1aUNEU">
            <node concept="3oM_SD" id="59FNqAPCINw" role="1PaTwD">
              <property role="3oM_SC" value="prepare" />
            </node>
            <node concept="3oM_SD" id="59FNqAPCINx" role="1PaTwD">
              <property role="3oM_SC" value="context" />
            </node>
            <node concept="3oM_SD" id="59FNqAPCINy" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="59FNqAPCINz" role="1PaTwD">
              <property role="3oM_SC" value="environment" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3yqPF1bPgXV" role="3cqZAp">
          <node concept="3cpWsn" id="3yqPF1bPgXW" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <node concept="3uibUv" id="3yqPF1bPgXX" role="1tU5fm">
              <ref role="3uigEE" to="2ahs:2X4$XGmetjM" resolve="ContextImpl" />
            </node>
            <node concept="2ShNRf" id="3yqPF1bPhaA" role="33vP2m">
              <node concept="1pGfFk" id="3yqPF1bPhEX" role="2ShVmc">
                <ref role="37wK5l" to="2ahs:2X4$XGmeuS6" resolve="ContextImpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3yqPF1bPovO" role="3cqZAp">
          <node concept="3cpWsn" id="3yqPF1bPovP" role="3cpWs9">
            <property role="TrG5h" value="environment" />
            <node concept="2OqwBi" id="3yqPF1bPovQ" role="33vP2m">
              <node concept="37vLTw" id="3yqPF1bPovR" role="2Oq$k0">
                <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
              </node>
              <node concept="liA8E" id="3yqPF1bPovS" role="2OqNvi">
                <ref role="37wK5l" to="2ahs:2X4$XGmeuKp" resolve="getEnvironment" />
              </node>
            </node>
            <node concept="3uibUv" id="7F2vPZ3KXYK" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3Tqbb2" id="7F2vPZ3KXYV" role="11_B2D">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
              <node concept="3uibUv" id="7F2vPZ3KXZw" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1MxN4CuZH__" role="3cqZAp">
          <node concept="2GrKxI" id="1MxN4CuZH_B" role="2Gsz3X">
            <property role="TrG5h" value="pv" />
          </node>
          <node concept="2OqwBi" id="1MxN4CuZKts" role="2GsD0m">
            <node concept="37vLTw" id="1MxN4CuZJVB" role="2Oq$k0">
              <ref role="3cqZAo" node="6KOiXOpuhnU" resolve="solution" />
            </node>
            <node concept="3Tsc0h" id="1MxN4Cvai4H" role="2OqNvi">
              <ref role="3TtcxE" to="wl5u:1MxN4Cv9CQo" resolve="paramValues" />
            </node>
          </node>
          <node concept="3clFbS" id="1MxN4CuZH_F" role="2LFqv$">
            <node concept="3cpWs8" id="1MxN4Cv149q" role="3cqZAp">
              <node concept="3cpWsn" id="1MxN4Cv149r" role="3cpWs9">
                <property role="TrG5h" value="v" />
                <node concept="3uibUv" id="1MxN4Cv12L8" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="2YIFZM" id="1MxN4Cv63Ey" role="33vP2m">
                  <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                  <ref role="37wK5l" node="3PEUHLX64yp" resolve="eval" />
                  <node concept="2GrUjf" id="1MxN4Cv63Ez" role="37wK5m">
                    <ref role="2Gs0qQ" node="1MxN4CuZH_B" resolve="pv" />
                  </node>
                  <node concept="37vLTw" id="1MxN4Cv63E$" role="37wK5m">
                    <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MxN4Cv17Hv" role="3cqZAp">
              <node concept="2OqwBi" id="1MxN4Cv18Iq" role="3clFbG">
                <node concept="37vLTw" id="1MxN4Cv17Hs" role="2Oq$k0">
                  <ref role="3cqZAo" node="3yqPF1bPovP" resolve="environment" />
                </node>
                <node concept="liA8E" id="1MxN4Cv19f8" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2OqwBi" id="1MxN4Cv19C8" role="37wK5m">
                    <node concept="2GrUjf" id="1MxN4Cv19u2" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1MxN4CuZH_B" resolve="pv" />
                    </node>
                    <node concept="3TrEf2" id="1MxN4Cvamjm" role="2OqNvi">
                      <ref role="3Tt5mk" to="wl5u:4Lx5PHoWyL" resolve="param" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1MxN4Cv1cA9" role="37wK5m">
                    <ref role="3cqZAo" node="1MxN4Cv149r" resolve="v" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1MxN4CuZXo3" role="3cqZAp" />
        <node concept="3cpWs8" id="1MxN4CuVUmp" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuVUmq" role="3cpWs9">
            <property role="TrG5h" value="world" />
            <node concept="3uibUv" id="1MxN4CuVUmr" role="1tU5fm">
              <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1MxN4CuVDo4" role="3cqZAp">
          <node concept="3clFbS" id="1MxN4CuVDo6" role="3clFbx">
            <node concept="3cpWs8" id="1MxN4CuVMOs" role="3cqZAp">
              <node concept="3cpWsn" id="1MxN4CuVMOt" role="3cpWs9">
                <property role="TrG5h" value="minX" />
                <node concept="10OMs4" id="1MxN4CuVMOu" role="1tU5fm" />
                <node concept="2YIFZM" id="1MxN4Cv69nh" role="33vP2m">
                  <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                  <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
                  <node concept="2OqwBi" id="1MxN4Cv69ni" role="37wK5m">
                    <node concept="37vLTw" id="1MxN4Cv69nj" role="2Oq$k0">
                      <ref role="3cqZAo" node="6KOiXOpuhnU" resolve="solution" />
                    </node>
                    <node concept="3TrEf2" id="1MxN4Cv69nk" role="2OqNvi">
                      <ref role="3Tt5mk" to="wl5u:1MxN4Cv9CQp" resolve="minX" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1MxN4Cv69nl" role="37wK5m">
                    <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1MxN4CuVLmx" role="3cqZAp">
              <node concept="3cpWsn" id="1MxN4CuVLmy" role="3cpWs9">
                <property role="TrG5h" value="maxX" />
                <node concept="10OMs4" id="1MxN4CuVL8E" role="1tU5fm" />
                <node concept="2YIFZM" id="1MxN4Cv69mT" role="33vP2m">
                  <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                  <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
                  <node concept="2OqwBi" id="1MxN4Cv69mU" role="37wK5m">
                    <node concept="37vLTw" id="1MxN4Cv69mV" role="2Oq$k0">
                      <ref role="3cqZAo" node="6KOiXOpuhnU" resolve="solution" />
                    </node>
                    <node concept="3TrEf2" id="1MxN4Cv69mW" role="2OqNvi">
                      <ref role="3Tt5mk" to="wl5u:1MxN4Cv9CQq" resolve="maxX" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1MxN4Cv69mX" role="37wK5m">
                    <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1MxN4CuVVj8" role="3cqZAp">
              <node concept="37vLTI" id="1MxN4CuVVxI" role="3clFbG">
                <node concept="2ShNRf" id="1MxN4CuVV_p" role="37vLTx">
                  <node concept="1pGfFk" id="1MxN4CuVV_7" role="2ShVmc">
                    <ref role="37wK5l" to="i1wt:6h7RWbAp9pZ" resolve="BoxWorld" />
                    <node concept="37vLTw" id="1MxN4CuVVAu" role="37wK5m">
                      <ref role="3cqZAo" node="1MxN4CuVMOt" resolve="minX" />
                    </node>
                    <node concept="37vLTw" id="1MxN4CuVVEW" role="37wK5m">
                      <ref role="3cqZAo" node="1MxN4CuVLmy" resolve="maxX" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1MxN4CuVVj6" role="37vLTJ">
                  <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1MxN4CuVIkr" role="3clFbw">
            <node concept="2OqwBi" id="1MxN4CuVKb$" role="3uHU7w">
              <node concept="2OqwBi" id="1MxN4CuVJww" role="2Oq$k0">
                <node concept="37vLTw" id="1MxN4CuVJcN" role="2Oq$k0">
                  <ref role="3cqZAo" node="6KOiXOpuhnU" resolve="solution" />
                </node>
                <node concept="3TrEf2" id="1MxN4CuVJUS" role="2OqNvi">
                  <ref role="3Tt5mk" to="wl5u:1MxN4Cv9CQq" resolve="maxX" />
                </node>
              </node>
              <node concept="3x8VRR" id="1MxN4CuVKDr" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="1MxN4CuVGFK" role="3uHU7B">
              <node concept="2OqwBi" id="1MxN4CuVFx8" role="2Oq$k0">
                <node concept="37vLTw" id="1MxN4CuVE_m" role="2Oq$k0">
                  <ref role="3cqZAo" node="6KOiXOpuhnU" resolve="solution" />
                </node>
                <node concept="3TrEf2" id="1MxN4CuVGtv" role="2OqNvi">
                  <ref role="3Tt5mk" to="wl5u:1MxN4Cv9CQp" resolve="minX" />
                </node>
              </node>
              <node concept="3x8VRR" id="1MxN4CuVHXS" role="2OqNvi" />
            </node>
          </node>
          <node concept="9aQIb" id="1MxN4CuVRhU" role="9aQIa">
            <node concept="3clFbS" id="1MxN4CuVRhV" role="9aQI4">
              <node concept="3clFbF" id="1MxN4CuVVLA" role="3cqZAp">
                <node concept="37vLTI" id="1MxN4CuVVXf" role="3clFbG">
                  <node concept="2ShNRf" id="1MxN4CuVW0U" role="37vLTx">
                    <node concept="1pGfFk" id="1MxN4CuVW0C" role="2ShVmc">
                      <ref role="37wK5l" to="i1wt:1MxN4CuVj$e" resolve="BoxWorld" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1MxN4CuVVL_" role="37vLTJ">
                    <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1MxN4CuV$7S" role="3cqZAp" />
        <node concept="3cpWs8" id="6KOiXOpukLj" role="3cqZAp">
          <node concept="3cpWsn" id="6KOiXOpukLk" role="3cpWs9">
            <property role="TrG5h" value="mechanism" />
            <node concept="3Tqbb2" id="6KOiXOpukHG" role="1tU5fm">
              <ref role="ehGHo" to="wl5u:4Lx5PHnXdT" resolve="Mechanism" />
            </node>
            <node concept="2OqwBi" id="6KOiXOpukLl" role="33vP2m">
              <node concept="37vLTw" id="6KOiXOpukLm" role="2Oq$k0">
                <ref role="3cqZAo" node="6KOiXOpuhnU" resolve="solution" />
              </node>
              <node concept="3TrEf2" id="1MxN4CvaiM_" role="2OqNvi">
                <ref role="3Tt5mk" to="wl5u:1MxN4Cv9CQ_" resolve="mechanism" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6h7RWbAuzeO" role="3cqZAp">
          <node concept="3cpWsn" id="6h7RWbAuzeP" role="3cpWs9">
            <property role="TrG5h" value="usedPoints" />
            <node concept="A3Dl8" id="6h7RWbAuze8" role="1tU5fm">
              <node concept="3Tqbb2" id="6h7RWbAuzeb" role="A3Ik2">
                <ref role="ehGHo" to="wl5u:6KOiXOptX5F" resolve="PointDef" />
              </node>
            </node>
            <node concept="2OqwBi" id="6h7RWbAuzeQ" role="33vP2m">
              <node concept="2OqwBi" id="6h7RWbAuzeR" role="2Oq$k0">
                <node concept="2OqwBi" id="6h7RWbAuzeS" role="2Oq$k0">
                  <node concept="37vLTw" id="6h7RWbAuzeT" role="2Oq$k0">
                    <ref role="3cqZAo" node="6KOiXOpukLk" resolve="mechanism" />
                  </node>
                  <node concept="3Tsc0h" id="6h7RWbAuzeU" role="2OqNvi">
                    <ref role="3TtcxE" to="wl5u:4Lx5PHoT0R" resolve="elements" />
                  </node>
                </node>
                <node concept="3goQfb" id="6h7RWbAuzeV" role="2OqNvi">
                  <node concept="1bVj0M" id="6h7RWbAuzeW" role="23t8la">
                    <node concept="3clFbS" id="6h7RWbAuzeX" role="1bW5cS">
                      <node concept="3clFbF" id="6h7RWbAuzeY" role="3cqZAp">
                        <node concept="2OqwBi" id="6h7RWbAuzeZ" role="3clFbG">
                          <node concept="37vLTw" id="6h7RWbAuzf0" role="2Oq$k0">
                            <ref role="3cqZAo" node="6h7RWbAuzf2" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="6h7RWbAuzf1" role="2OqNvi">
                            <ref role="37wK5l" node="6h7RWbAuq9P" resolve="points" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6h7RWbAuzf2" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6h7RWbAuzf3" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1VAtEI" id="6h7RWbAuzf4" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6KOiXOpusU1" role="3cqZAp">
          <node concept="3cpWsn" id="6KOiXOpusU7" role="3cpWs9">
            <property role="TrG5h" value="points" />
            <node concept="3rvAFt" id="6KOiXOpusU9" role="1tU5fm">
              <node concept="3Tqbb2" id="6KOiXOputi7" role="3rvQeY">
                <ref role="ehGHo" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
              </node>
              <node concept="3uibUv" id="6h7RWbAENWf" role="3rvSg0">
                <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
              </node>
            </node>
            <node concept="2ShNRf" id="6KOiXOputDr" role="33vP2m">
              <node concept="3rGOSV" id="6KOiXOputCk" role="2ShVmc">
                <node concept="3Tqbb2" id="6KOiXOputCl" role="3rHrn6">
                  <ref role="ehGHo" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
                </node>
                <node concept="3uibUv" id="6h7RWbAEMUV" role="3rHtpV">
                  <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6KOiXOpurpt" role="3cqZAp">
          <node concept="2GrKxI" id="6KOiXOpurpv" role="2Gsz3X">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="3clFbS" id="6KOiXOpurpz" role="2LFqv$">
            <node concept="3cpWs8" id="6KOiXOpuUse" role="3cqZAp">
              <node concept="3cpWsn" id="6KOiXOpuUsf" role="3cpWs9">
                <property role="TrG5h" value="x" />
                <node concept="10OMs4" id="6KOiXOpuUsg" role="1tU5fm" />
                <node concept="2YIFZM" id="1MxN4Cv69nr" role="33vP2m">
                  <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                  <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
                  <node concept="2OqwBi" id="1MxN4Cv69ns" role="37wK5m">
                    <node concept="2OqwBi" id="1MxN4Cv69nt" role="2Oq$k0">
                      <node concept="2GrUjf" id="1MxN4Cv69nu" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6KOiXOpurpv" resolve="p" />
                      </node>
                      <node concept="3TrEf2" id="1MxN4Cv69nv" role="2OqNvi">
                        <ref role="3Tt5mk" to="wl5u:6KOiXOptXFQ" resolve="loc" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1MxN4Cv69nw" role="2OqNvi">
                      <ref role="3Tt5mk" to="wl5u:6KOiXOptLlw" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1MxN4Cv69nx" role="37wK5m">
                    <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6KOiXOpuTQQ" role="3cqZAp">
              <node concept="3cpWsn" id="6KOiXOpuTQR" role="3cpWs9">
                <property role="TrG5h" value="y" />
                <node concept="10OMs4" id="6KOiXOpuTF_" role="1tU5fm" />
                <node concept="2YIFZM" id="1MxN4Cv69mx" role="33vP2m">
                  <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                  <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
                  <node concept="2OqwBi" id="1MxN4Cv69my" role="37wK5m">
                    <node concept="2OqwBi" id="1MxN4Cv69mz" role="2Oq$k0">
                      <node concept="2GrUjf" id="1MxN4Cv69m$" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6KOiXOpurpv" resolve="p" />
                      </node>
                      <node concept="3TrEf2" id="1MxN4Cv69m_" role="2OqNvi">
                        <ref role="3Tt5mk" to="wl5u:6KOiXOptXFQ" resolve="loc" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1MxN4Cv69mA" role="2OqNvi">
                      <ref role="3Tt5mk" to="wl5u:6KOiXOptLlx" resolve="y" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1MxN4Cv69mB" role="37wK5m">
                    <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4Lx5PHllGF" role="3cqZAp">
              <node concept="3cpWsn" id="4Lx5PHllGG" role="3cpWs9">
                <property role="TrG5h" value="box" />
                <node concept="3uibUv" id="4Lx5PHllGH" role="1tU5fm">
                  <ref role="3uigEE" to="i1wt:4Lx5PHl1Q3" resolve="Box" />
                </node>
                <node concept="2ShNRf" id="4Lx5PHllKp" role="33vP2m">
                  <node concept="1pGfFk" id="4Lx5PHllSz" role="2ShVmc">
                    <ref role="37wK5l" to="i1wt:4Lx5PHl1Uh" resolve="Box" />
                    <node concept="2OqwBi" id="6h7RWbAq5HF" role="37wK5m">
                      <node concept="2GrUjf" id="6h7RWbAq5fn" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6KOiXOpurpv" resolve="p" />
                      </node>
                      <node concept="3TrcHB" id="6h7RWbAq6Al" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6KOiXOpuWBv" role="37wK5m">
                      <ref role="3cqZAo" node="6KOiXOpuUsf" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="6KOiXOpuX36" role="37wK5m">
                      <ref role="3cqZAo" node="6KOiXOpuTQR" resolve="y" />
                    </node>
                    <node concept="2$xPTn" id="4Lx5PHnFyc" role="37wK5m">
                      <property role="2$xPTl" value="0.1f" />
                    </node>
                    <node concept="2$xPTn" id="4Lx5PHnFUC" role="37wK5m">
                      <property role="2$xPTl" value="0.1f" />
                    </node>
                    <node concept="2$xPTn" id="6h7RWbAx7Lm" role="37wK5m">
                      <property role="2$xPTl" value="0.0f" />
                    </node>
                    <node concept="2$xPTn" id="6h7RWbACUp2" role="37wK5m">
                      <property role="2$xPTl" value="10.0f" />
                    </node>
                    <node concept="3clFbT" id="4Lx5PHlo9r" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="1MxN4CuVYsn" role="37wK5m">
                      <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6h7RWbApqvG" role="3cqZAp">
              <node concept="2OqwBi" id="6h7RWbApqUa" role="3clFbG">
                <node concept="37vLTw" id="1MxN4CuVYqf" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                </node>
                <node concept="liA8E" id="6h7RWbApru6" role="2OqNvi">
                  <ref role="37wK5l" to="i1wt:6h7RWbApk6E" resolve="addItem" />
                  <node concept="37vLTw" id="6h7RWbAprv7" role="37wK5m">
                    <ref role="3cqZAo" node="4Lx5PHllGG" resolve="box" />
                  </node>
                  <node concept="3clFbT" id="667ewDY3P4z" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6KOiXOpuZjz" role="3cqZAp">
              <node concept="37vLTI" id="6KOiXOpv0ft" role="3clFbG">
                <node concept="37vLTw" id="6KOiXOpv0uX" role="37vLTx">
                  <ref role="3cqZAo" node="4Lx5PHllGG" resolve="box" />
                </node>
                <node concept="3EllGN" id="6KOiXOpv023" role="37vLTJ">
                  <node concept="2GrUjf" id="6KOiXOpv07Z" role="3ElVtu">
                    <ref role="2Gs0qQ" node="6KOiXOpurpv" resolve="p" />
                  </node>
                  <node concept="37vLTw" id="6KOiXOpuZjx" role="3ElQJh">
                    <ref role="3cqZAo" node="6KOiXOpusU7" resolve="points" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6h7RWbAuBUS" role="2GsD0m">
            <node concept="2OqwBi" id="6KOiXOpuqxK" role="2Oq$k0">
              <node concept="37vLTw" id="6KOiXOpuq3m" role="2Oq$k0">
                <ref role="3cqZAo" node="6KOiXOpukLk" resolve="mechanism" />
              </node>
              <node concept="3Tsc0h" id="6KOiXOpuqZ7" role="2OqNvi">
                <ref role="3TtcxE" to="wl5u:4Lx5PHoSZt" resolve="fixedPoints" />
              </node>
            </node>
            <node concept="3zZkjj" id="6h7RWbAuH5x" role="2OqNvi">
              <node concept="1bVj0M" id="6h7RWbAuH5z" role="23t8la">
                <node concept="3clFbS" id="6h7RWbAuH5$" role="1bW5cS">
                  <node concept="3clFbF" id="6h7RWbAuHdG" role="3cqZAp">
                    <node concept="2OqwBi" id="6h7RWbAuIdj" role="3clFbG">
                      <node concept="37vLTw" id="6h7RWbAv2kd" role="2Oq$k0">
                        <ref role="3cqZAo" node="6h7RWbAuzeP" resolve="usedPoints" />
                      </node>
                      <node concept="3JPx81" id="6h7RWbAuJpp" role="2OqNvi">
                        <node concept="37vLTw" id="6h7RWbAuKdp" role="25WWJ7">
                          <ref role="3cqZAo" node="6h7RWbAuH5_" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6h7RWbAuH5_" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6h7RWbAuH5A" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6KOiXOpv0YC" role="3cqZAp">
          <node concept="2GrKxI" id="6KOiXOpv0YD" role="2Gsz3X">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="3clFbS" id="6KOiXOpv0YE" role="2LFqv$">
            <node concept="3cpWs8" id="6KOiXOpv0YF" role="3cqZAp">
              <node concept="3cpWsn" id="6KOiXOpv0YG" role="3cpWs9">
                <property role="TrG5h" value="x" />
                <node concept="10OMs4" id="6KOiXOpv0YH" role="1tU5fm" />
                <node concept="2YIFZM" id="1MxN4Cv69n3" role="33vP2m">
                  <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                  <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
                  <node concept="2OqwBi" id="1MxN4Cv69n4" role="37wK5m">
                    <node concept="2OqwBi" id="1MxN4Cv69n5" role="2Oq$k0">
                      <node concept="2GrUjf" id="1MxN4Cv69n6" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6KOiXOpv0YD" resolve="p" />
                      </node>
                      <node concept="3TrEf2" id="1MxN4Cv69n7" role="2OqNvi">
                        <ref role="3Tt5mk" to="wl5u:6KOiXOptXFQ" resolve="loc" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1MxN4Cv69n8" role="2OqNvi">
                      <ref role="3Tt5mk" to="wl5u:6KOiXOptLlw" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1MxN4Cv69n9" role="37wK5m">
                    <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6KOiXOpv0YP" role="3cqZAp">
              <node concept="3cpWsn" id="6KOiXOpv0YQ" role="3cpWs9">
                <property role="TrG5h" value="y" />
                <node concept="10OMs4" id="6KOiXOpv0YR" role="1tU5fm" />
                <node concept="2YIFZM" id="1MxN4Cv69mj" role="33vP2m">
                  <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                  <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
                  <node concept="2OqwBi" id="1MxN4Cv69mk" role="37wK5m">
                    <node concept="2OqwBi" id="1MxN4Cv69ml" role="2Oq$k0">
                      <node concept="2GrUjf" id="1MxN4Cv69mm" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6KOiXOpv0YD" resolve="p" />
                      </node>
                      <node concept="3TrEf2" id="1MxN4Cv69mn" role="2OqNvi">
                        <ref role="3Tt5mk" to="wl5u:6KOiXOptXFQ" resolve="loc" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1MxN4Cv69mo" role="2OqNvi">
                      <ref role="3Tt5mk" to="wl5u:6KOiXOptLlx" resolve="y" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1MxN4Cv69mp" role="37wK5m">
                    <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6KOiXOpv0YZ" role="3cqZAp">
              <node concept="3cpWsn" id="6KOiXOpv0Z0" role="3cpWs9">
                <property role="TrG5h" value="circle" />
                <node concept="3uibUv" id="6h7RWbAEmYz" role="1tU5fm">
                  <ref role="3uigEE" to="i1wt:6h7RWbAEc0b" resolve="Circle" />
                </node>
                <node concept="2ShNRf" id="6KOiXOpv0Z2" role="33vP2m">
                  <node concept="1pGfFk" id="6KOiXOpv0Z3" role="2ShVmc">
                    <ref role="37wK5l" to="i1wt:6h7RWbAEc0s" resolve="Circle" />
                    <node concept="2OqwBi" id="6h7RWbAq7T1" role="37wK5m">
                      <node concept="2GrUjf" id="6h7RWbAq7sV" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6KOiXOpv0YD" resolve="p" />
                      </node>
                      <node concept="3TrcHB" id="6h7RWbAq8nF" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6KOiXOpv0Z4" role="37wK5m">
                      <ref role="3cqZAo" node="6KOiXOpv0YG" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="6KOiXOpv0Z5" role="37wK5m">
                      <ref role="3cqZAo" node="6KOiXOpv0YQ" resolve="y" />
                    </node>
                    <node concept="2$xPTn" id="6KOiXOpv0Z6" role="37wK5m">
                      <property role="2$xPTl" value="0.03f" />
                    </node>
                    <node concept="2$xPTn" id="6h7RWbACVQb" role="37wK5m">
                      <property role="2$xPTl" value="20.0f" />
                    </node>
                    <node concept="3clFbT" id="6KOiXOpv0Z8" role="37wK5m" />
                    <node concept="37vLTw" id="1MxN4CuVYsJ" role="37wK5m">
                      <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6h7RWbAprFM" role="3cqZAp">
              <node concept="2OqwBi" id="6h7RWbAprFN" role="3clFbG">
                <node concept="37vLTw" id="1MxN4CuVZbg" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                </node>
                <node concept="liA8E" id="6h7RWbAprFP" role="2OqNvi">
                  <ref role="37wK5l" to="i1wt:6h7RWbApk6E" resolve="addItem" />
                  <node concept="37vLTw" id="6h7RWbAprFQ" role="37wK5m">
                    <ref role="3cqZAo" node="6KOiXOpv0Z0" resolve="circle" />
                  </node>
                  <node concept="3clFbT" id="667ewDY3OYK" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6KOiXOpv0Za" role="3cqZAp">
              <node concept="37vLTI" id="6KOiXOpv0Zb" role="3clFbG">
                <node concept="37vLTw" id="6KOiXOpv0Zc" role="37vLTx">
                  <ref role="3cqZAo" node="6KOiXOpv0Z0" resolve="circle" />
                </node>
                <node concept="3EllGN" id="6KOiXOpv0Zd" role="37vLTJ">
                  <node concept="2GrUjf" id="6KOiXOpv43D" role="3ElVtu">
                    <ref role="2Gs0qQ" node="6KOiXOpv0YD" resolve="p" />
                  </node>
                  <node concept="37vLTw" id="6KOiXOpvdvz" role="3ElQJh">
                    <ref role="3cqZAo" node="6KOiXOpusU7" resolve="points" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6h7RWbAuMDU" role="2GsD0m">
            <node concept="2OqwBi" id="6KOiXOpv0Zg" role="2Oq$k0">
              <node concept="37vLTw" id="6KOiXOpv0Zh" role="2Oq$k0">
                <ref role="3cqZAo" node="6KOiXOpukLk" resolve="mechanism" />
              </node>
              <node concept="3Tsc0h" id="6KOiXOpv3vj" role="2OqNvi">
                <ref role="3TtcxE" to="wl5u:6KOiXOptYSQ" resolve="movingPoints" />
              </node>
            </node>
            <node concept="3zZkjj" id="6h7RWbAuPMf" role="2OqNvi">
              <node concept="1bVj0M" id="6h7RWbAuPMh" role="23t8la">
                <node concept="3clFbS" id="6h7RWbAuPMi" role="1bW5cS">
                  <node concept="3clFbF" id="6h7RWbAuQtF" role="3cqZAp">
                    <node concept="2OqwBi" id="6h7RWbAuRti" role="3clFbG">
                      <node concept="37vLTw" id="6h7RWbAv1pk" role="2Oq$k0">
                        <ref role="3cqZAo" node="6h7RWbAuzeP" resolve="usedPoints" />
                      </node>
                      <node concept="3JPx81" id="6h7RWbAuSM6" role="2OqNvi">
                        <node concept="37vLTw" id="6h7RWbAuTdC" role="25WWJ7">
                          <ref role="3cqZAo" node="6h7RWbAuPMj" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6h7RWbAuPMj" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6h7RWbAuPMk" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QSm86drwa1" role="3cqZAp">
          <node concept="3cpWsn" id="2QSm86drwa7" role="3cpWs9">
            <property role="TrG5h" value="segments" />
            <node concept="3rvAFt" id="2QSm86drwa9" role="1tU5fm">
              <node concept="3Tqbb2" id="2QSm86drxhd" role="3rvQeY">
                <ref role="ehGHo" to="wl5u:4Lx5PHkDsO" resolve="Segment" />
              </node>
              <node concept="3uibUv" id="2QSm86drxpw" role="3rvSg0">
                <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
              </node>
            </node>
            <node concept="2ShNRf" id="2QSm86drxut" role="33vP2m">
              <node concept="3rGOSV" id="2QSm86drxu3" role="2ShVmc">
                <node concept="3Tqbb2" id="2QSm86drxu4" role="3rHrn6">
                  <ref role="ehGHo" to="wl5u:4Lx5PHkDsO" resolve="Segment" />
                </node>
                <node concept="3uibUv" id="2QSm86drxu5" role="3rHtpV">
                  <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6KOiXOpv59N" role="3cqZAp">
          <node concept="2GrKxI" id="6KOiXOpv59P" role="2Gsz3X">
            <property role="TrG5h" value="elem" />
          </node>
          <node concept="2OqwBi" id="6KOiXOpv6ou" role="2GsD0m">
            <node concept="37vLTw" id="6KOiXOpv67P" role="2Oq$k0">
              <ref role="3cqZAo" node="6KOiXOpukLk" resolve="mechanism" />
            </node>
            <node concept="3Tsc0h" id="6KOiXOpv6KO" role="2OqNvi">
              <ref role="3TtcxE" to="wl5u:4Lx5PHoT0R" resolve="elements" />
            </node>
          </node>
          <node concept="3clFbS" id="6KOiXOpv59T" role="2LFqv$">
            <node concept="Jncv_" id="2QSm86dr52L" role="3cqZAp">
              <ref role="JncvD" to="wl5u:4Lx5PHkDsO" resolve="Segment" />
              <node concept="2GrUjf" id="2QSm86dr66J" role="JncvB">
                <ref role="2Gs0qQ" node="6KOiXOpv59P" resolve="elem" />
              </node>
              <node concept="3clFbS" id="2QSm86dr52P" role="Jncv$">
                <node concept="3cpWs8" id="6KOiXOpvfhM" role="3cqZAp">
                  <node concept="3cpWsn" id="6KOiXOpvfhN" role="3cpWs9">
                    <property role="TrG5h" value="b1" />
                    <node concept="3uibUv" id="6h7RWbAEP18" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                    </node>
                    <node concept="3EllGN" id="6KOiXOpvfhO" role="33vP2m">
                      <node concept="2OqwBi" id="6KOiXOpvjq_" role="3ElVtu">
                        <node concept="2OqwBi" id="6KOiXOpviBh" role="2Oq$k0">
                          <node concept="2OqwBi" id="6KOiXOpvfhP" role="2Oq$k0">
                            <node concept="Jnkvi" id="2QSm86dsPb8" role="2Oq$k0">
                              <ref role="1M0zk5" node="2QSm86dr52R" resolve="seg" />
                            </node>
                            <node concept="3TrEf2" id="2QSm86dp8Kh" role="2OqNvi">
                              <ref role="3Tt5mk" to="wl5u:6KOiXOptKtF" resolve="start" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="6KOiXOpvj4k" role="2OqNvi">
                            <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6KOiXOpvjZ3" role="2OqNvi">
                          <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6KOiXOpvfhS" role="3ElQJh">
                        <ref role="3cqZAo" node="6KOiXOpusU7" resolve="points" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6KOiXOpvkki" role="3cqZAp">
                  <node concept="3cpWsn" id="6KOiXOpvkkj" role="3cpWs9">
                    <property role="TrG5h" value="b2" />
                    <node concept="3uibUv" id="6h7RWbAEPyQ" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                    </node>
                    <node concept="3EllGN" id="6KOiXOpvkkl" role="33vP2m">
                      <node concept="2OqwBi" id="6KOiXOpvkkm" role="3ElVtu">
                        <node concept="2OqwBi" id="6KOiXOpvkkn" role="2Oq$k0">
                          <node concept="2OqwBi" id="6KOiXOpvkko" role="2Oq$k0">
                            <node concept="Jnkvi" id="2QSm86dsPTo" role="2Oq$k0">
                              <ref role="1M0zk5" node="2QSm86dr52R" resolve="seg" />
                            </node>
                            <node concept="3TrEf2" id="6KOiXOpvkVR" role="2OqNvi">
                              <ref role="3Tt5mk" to="wl5u:6KOiXOptKyL" resolve="end" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="6KOiXOpvkkr" role="2OqNvi">
                            <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6KOiXOpvkks" role="2OqNvi">
                          <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6KOiXOpvkkt" role="3ElQJh">
                        <ref role="3cqZAo" node="6KOiXOpusU7" resolve="points" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6h7RWbAD8c_" role="3cqZAp">
                  <node concept="3cpWsn" id="6h7RWbAD8cA" role="3cpWs9">
                    <property role="TrG5h" value="density" />
                    <node concept="10OMs4" id="6h7RWbAD88g" role="1tU5fm" />
                    <node concept="2YIFZM" id="1MxN4Cv69nD" role="33vP2m">
                      <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                      <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
                      <node concept="2OqwBi" id="1MxN4Cv69nE" role="37wK5m">
                        <node concept="Jnkvi" id="1MxN4Cv69nF" role="2Oq$k0">
                          <ref role="1M0zk5" node="2QSm86dr52R" resolve="seg" />
                        </node>
                        <node concept="3TrEf2" id="1MxN4Cv69nG" role="2OqNvi">
                          <ref role="3Tt5mk" to="wl5u:6h7RWbACWzN" resolve="density" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MxN4Cv69nH" role="37wK5m">
                        <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1MxN4CuYr0H" role="3cqZAp">
                  <node concept="3cpWsn" id="1MxN4CuYr0I" role="3cpWs9">
                    <property role="TrG5h" value="item" />
                    <node concept="3uibUv" id="1MxN4CuYqvI" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:4Lx5PHl1Q3" resolve="Box" />
                    </node>
                    <node concept="1rXfSq" id="1MxN4CuYr0J" role="33vP2m">
                      <ref role="37wK5l" node="1MxN4CuXWff" resolve="makeSegment" />
                      <node concept="2OqwBi" id="1MxN4CuYr0K" role="37wK5m">
                        <node concept="Jnkvi" id="1MxN4CuYr0L" role="2Oq$k0">
                          <ref role="1M0zk5" node="2QSm86dr52R" resolve="seg" />
                        </node>
                        <node concept="3TrcHB" id="1MxN4CuYr0M" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYr0N" role="37wK5m">
                        <ref role="3cqZAo" node="6KOiXOpvfhN" resolve="b1" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYr0O" role="37wK5m">
                        <ref role="3cqZAo" node="6KOiXOpvkkj" resolve="b2" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYr0P" role="37wK5m">
                        <ref role="3cqZAo" node="6h7RWbAD8cA" resolve="density" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYr0Q" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2B9hOR0Fkli" role="3cqZAp">
                  <node concept="2OqwBi" id="2B9hOR0Fl5p" role="3clFbG">
                    <node concept="37vLTw" id="2B9hOR0Fklg" role="2Oq$k0">
                      <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                    </node>
                    <node concept="liA8E" id="2B9hOR0FlKx" role="2OqNvi">
                      <ref role="37wK5l" to="i1wt:2B9hOR0FaSF" resolve="registerMovingPart" />
                      <node concept="2ShNRf" id="2B9hOR0FlMX" role="37wK5m">
                        <node concept="Tc6Ow" id="2B9hOR0FncS" role="2ShVmc">
                          <node concept="37vLTw" id="2B9hOR0FnME" role="HW$Y0">
                            <ref role="3cqZAo" node="1MxN4CuYr0I" resolve="item" />
                          </node>
                          <node concept="3uibUv" id="2B9hOR0Fo8G" role="HW$YZ">
                            <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="667ewDY2AJ6" role="3cqZAp">
                  <node concept="37vLTI" id="667ewDY2Bn4" role="3clFbG">
                    <node concept="37vLTw" id="667ewDY2BTP" role="37vLTx">
                      <ref role="3cqZAo" node="1MxN4CuYr0I" resolve="item" />
                    </node>
                    <node concept="3EllGN" id="667ewDY2B86" role="37vLTJ">
                      <node concept="Jnkvi" id="667ewDY2Bca" role="3ElVtu">
                        <ref role="1M0zk5" node="2QSm86dr52R" resolve="seg" />
                      </node>
                      <node concept="37vLTw" id="667ewDY2AJ4" role="3ElQJh">
                        <ref role="3cqZAo" node="2QSm86drwa7" resolve="segments" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="2QSm86dr52R" role="JncvA">
                <property role="TrG5h" value="seg" />
                <node concept="2jxLKc" id="2QSm86dr52S" role="1tU5fm" />
              </node>
            </node>
            <node concept="Jncv_" id="1MxN4CuX9DN" role="3cqZAp">
              <ref role="JncvD" to="wl5u:1MxN4CuWs1X" resolve="Triangle" />
              <node concept="2GrUjf" id="1MxN4CuX9DO" role="JncvB">
                <ref role="2Gs0qQ" node="6KOiXOpv59P" resolve="elem" />
              </node>
              <node concept="3clFbS" id="1MxN4CuX9DP" role="Jncv$">
                <node concept="3cpWs8" id="1MxN4CuX9DQ" role="3cqZAp">
                  <node concept="3cpWsn" id="1MxN4CuX9DR" role="3cpWs9">
                    <property role="TrG5h" value="b1" />
                    <node concept="3uibUv" id="1MxN4CuX9DS" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                    </node>
                    <node concept="3EllGN" id="1MxN4CuX9DT" role="33vP2m">
                      <node concept="2OqwBi" id="1MxN4CuX9DU" role="3ElVtu">
                        <node concept="2OqwBi" id="1MxN4CuX9DV" role="2Oq$k0">
                          <node concept="2OqwBi" id="1MxN4CuX9DW" role="2Oq$k0">
                            <node concept="Jnkvi" id="1MxN4CuX9DX" role="2Oq$k0">
                              <ref role="1M0zk5" node="1MxN4CuX9FK" resolve="tri" />
                            </node>
                            <node concept="3TrEf2" id="1MxN4CuXg1J" role="2OqNvi">
                              <ref role="3Tt5mk" to="wl5u:1MxN4CuWs20" resolve="a" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="1MxN4CuX9DZ" role="2OqNvi">
                            <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="1MxN4CuX9E0" role="2OqNvi">
                          <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MxN4CuX9E1" role="3ElQJh">
                        <ref role="3cqZAo" node="6KOiXOpusU7" resolve="points" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1MxN4CuXhLO" role="3cqZAp">
                  <node concept="3cpWsn" id="1MxN4CuXhLP" role="3cpWs9">
                    <property role="TrG5h" value="b2" />
                    <node concept="3uibUv" id="1MxN4CuXhLQ" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                    </node>
                    <node concept="3EllGN" id="1MxN4CuXhLR" role="33vP2m">
                      <node concept="2OqwBi" id="1MxN4CuXhLS" role="3ElVtu">
                        <node concept="2OqwBi" id="1MxN4CuXhLT" role="2Oq$k0">
                          <node concept="2OqwBi" id="1MxN4CuXhLU" role="2Oq$k0">
                            <node concept="Jnkvi" id="1MxN4CuXhLV" role="2Oq$k0">
                              <ref role="1M0zk5" node="1MxN4CuX9FK" resolve="tri" />
                            </node>
                            <node concept="3TrEf2" id="1MxN4CuXhLW" role="2OqNvi">
                              <ref role="3Tt5mk" to="wl5u:1MxN4CuWs23" resolve="b" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="1MxN4CuXhLX" role="2OqNvi">
                            <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="1MxN4CuXhLY" role="2OqNvi">
                          <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MxN4CuXhLZ" role="3ElQJh">
                        <ref role="3cqZAo" node="6KOiXOpusU7" resolve="points" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1MxN4CuX9E2" role="3cqZAp">
                  <node concept="3cpWsn" id="1MxN4CuX9E3" role="3cpWs9">
                    <property role="TrG5h" value="b3" />
                    <node concept="3uibUv" id="1MxN4CuX9E4" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                    </node>
                    <node concept="3EllGN" id="1MxN4CuX9E5" role="33vP2m">
                      <node concept="2OqwBi" id="1MxN4CuX9E6" role="3ElVtu">
                        <node concept="2OqwBi" id="1MxN4CuX9E7" role="2Oq$k0">
                          <node concept="2OqwBi" id="1MxN4CuX9E8" role="2Oq$k0">
                            <node concept="Jnkvi" id="1MxN4CuX9E9" role="2Oq$k0">
                              <ref role="1M0zk5" node="1MxN4CuX9FK" resolve="tri" />
                            </node>
                            <node concept="3TrEf2" id="1MxN4CuXlLx" role="2OqNvi">
                              <ref role="3Tt5mk" to="wl5u:1MxN4CuWs21" resolve="c" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="1MxN4CuX9Eb" role="2OqNvi">
                            <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="1MxN4CuX9Ec" role="2OqNvi">
                          <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MxN4CuX9Ed" role="3ElQJh">
                        <ref role="3cqZAo" node="6KOiXOpusU7" resolve="points" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1MxN4CuYtTA" role="3cqZAp">
                  <node concept="3cpWsn" id="1MxN4CuYtTB" role="3cpWs9">
                    <property role="TrG5h" value="density" />
                    <node concept="10OMs4" id="1MxN4CuYtTC" role="1tU5fm" />
                    <node concept="2YIFZM" id="1MxN4Cv69mJ" role="33vP2m">
                      <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                      <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
                      <node concept="2OqwBi" id="1MxN4Cv69mK" role="37wK5m">
                        <node concept="3TrEf2" id="1MxN4Cv69mL" role="2OqNvi">
                          <ref role="3Tt5mk" to="wl5u:1MxN4CuWs22" resolve="density" />
                        </node>
                        <node concept="Jnkvi" id="1MxN4Cv69mM" role="2Oq$k0">
                          <ref role="1M0zk5" node="1MxN4CuX9FK" resolve="tri" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MxN4Cv69mN" role="37wK5m">
                        <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1MxN4CuYy9E" role="3cqZAp">
                  <node concept="3cpWsn" id="1MxN4CuYy9F" role="3cpWs9">
                    <property role="TrG5h" value="itemA" />
                    <node concept="3uibUv" id="1MxN4CuYy9G" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:4Lx5PHl1Q3" resolve="Box" />
                    </node>
                    <node concept="1rXfSq" id="1MxN4CuYy9H" role="33vP2m">
                      <ref role="37wK5l" node="1MxN4CuXWff" resolve="makeSegment" />
                      <node concept="3cpWs3" id="1MxN4CuYy9I" role="37wK5m">
                        <node concept="Xl_RD" id="1MxN4CuYy9J" role="3uHU7w">
                          <property role="Xl_RC" value="_a" />
                        </node>
                        <node concept="2OqwBi" id="1MxN4CuYy9K" role="3uHU7B">
                          <node concept="Jnkvi" id="1MxN4CuYy9L" role="2Oq$k0">
                            <ref role="1M0zk5" node="1MxN4CuX9FK" resolve="tri" />
                          </node>
                          <node concept="3TrcHB" id="1MxN4CuYy9M" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYy9N" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuX9DR" resolve="b1" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYy9O" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuXhLP" resolve="b2" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYy9P" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuYtTB" resolve="density" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYy9Q" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1MxN4CuYtTI" role="3cqZAp">
                  <node concept="3cpWsn" id="1MxN4CuYtTJ" role="3cpWs9">
                    <property role="TrG5h" value="itemB" />
                    <node concept="3uibUv" id="1MxN4CuYtTK" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:4Lx5PHl1Q3" resolve="Box" />
                    </node>
                    <node concept="1rXfSq" id="1MxN4CuYtTL" role="33vP2m">
                      <ref role="37wK5l" node="1MxN4CuXWff" resolve="makeSegment" />
                      <node concept="3cpWs3" id="1MxN4CuYxnB" role="37wK5m">
                        <node concept="Xl_RD" id="1MxN4CuYxnY" role="3uHU7w">
                          <property role="Xl_RC" value="_b" />
                        </node>
                        <node concept="2OqwBi" id="1MxN4CuYtTM" role="3uHU7B">
                          <node concept="Jnkvi" id="1MxN4CuYwbn" role="2Oq$k0">
                            <ref role="1M0zk5" node="1MxN4CuX9FK" resolve="tri" />
                          </node>
                          <node concept="3TrcHB" id="1MxN4CuYtTO" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MxN4CuY_Me" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuXhLP" resolve="b2" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuY_RU" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuX9E3" resolve="b3" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYtTR" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuYtTB" resolve="density" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYtTS" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1MxN4CuY$Dz" role="3cqZAp">
                  <node concept="3cpWsn" id="1MxN4CuY$D$" role="3cpWs9">
                    <property role="TrG5h" value="itemC" />
                    <node concept="3uibUv" id="1MxN4CuY$D_" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:4Lx5PHl1Q3" resolve="Box" />
                    </node>
                    <node concept="1rXfSq" id="1MxN4CuY$DA" role="33vP2m">
                      <ref role="37wK5l" node="1MxN4CuXWff" resolve="makeSegment" />
                      <node concept="3cpWs3" id="1MxN4CuY$DB" role="37wK5m">
                        <node concept="Xl_RD" id="1MxN4CuY$DC" role="3uHU7w">
                          <property role="Xl_RC" value="_c" />
                        </node>
                        <node concept="2OqwBi" id="1MxN4CuY$DD" role="3uHU7B">
                          <node concept="Jnkvi" id="1MxN4CuY$DE" role="2Oq$k0">
                            <ref role="1M0zk5" node="1MxN4CuX9FK" resolve="tri" />
                          </node>
                          <node concept="3TrcHB" id="1MxN4CuY$DF" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MxN4CuY_Vk" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuX9E3" resolve="b3" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuYA10" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuX9DR" resolve="b1" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuY$DI" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuYtTB" resolve="density" />
                      </node>
                      <node concept="37vLTw" id="1MxN4CuY$DJ" role="37wK5m">
                        <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2B9hOR0FofT" role="3cqZAp">
                  <node concept="2OqwBi" id="2B9hOR0FofU" role="3clFbG">
                    <node concept="37vLTw" id="2B9hOR0FofV" role="2Oq$k0">
                      <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                    </node>
                    <node concept="liA8E" id="2B9hOR0FofW" role="2OqNvi">
                      <ref role="37wK5l" to="i1wt:2B9hOR0FaSF" resolve="registerMovingPart" />
                      <node concept="2ShNRf" id="2B9hOR0FofX" role="37wK5m">
                        <node concept="Tc6Ow" id="2B9hOR0FofY" role="2ShVmc">
                          <node concept="37vLTw" id="2B9hOR0FoFW" role="HW$Y0">
                            <ref role="3cqZAo" node="1MxN4CuYy9F" resolve="itemA" />
                          </node>
                          <node concept="37vLTw" id="2B9hOR0FoHP" role="HW$Y0">
                            <ref role="3cqZAo" node="1MxN4CuYtTJ" resolve="itemB" />
                          </node>
                          <node concept="37vLTw" id="2B9hOR0FoJ_" role="HW$Y0">
                            <ref role="3cqZAo" node="1MxN4CuY$D$" resolve="itemC" />
                          </node>
                          <node concept="3uibUv" id="2B9hOR0Fog0" role="HW$YZ">
                            <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="1MxN4CuX9FK" role="JncvA">
                <property role="TrG5h" value="tri" />
                <node concept="2jxLKc" id="1MxN4CuX9FL" role="1tU5fm" />
              </node>
            </node>
            <node concept="Jncv_" id="2QSm86dr97y" role="3cqZAp">
              <ref role="JncvD" to="wl5u:2QSm86dp9Fk" resolve="Anchor" />
              <node concept="2GrUjf" id="2QSm86dr9to" role="JncvB">
                <ref role="2Gs0qQ" node="6KOiXOpv59P" resolve="elem" />
              </node>
              <node concept="3clFbS" id="2QSm86dr97A" role="Jncv$">
                <node concept="3cpWs8" id="2QSm86drCSO" role="3cqZAp">
                  <node concept="3cpWsn" id="2QSm86drCSP" role="3cpWs9">
                    <property role="TrG5h" value="seg" />
                    <node concept="3uibUv" id="2QSm86drCHX" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
                    </node>
                    <node concept="3EllGN" id="2QSm86drCSQ" role="33vP2m">
                      <node concept="2OqwBi" id="2QSm86drCSR" role="3ElVtu">
                        <node concept="Jnkvi" id="2QSm86drCSS" role="2Oq$k0">
                          <ref role="1M0zk5" node="2QSm86dr97C" resolve="anchor" />
                        </node>
                        <node concept="3TrEf2" id="2QSm86drCST" role="2OqNvi">
                          <ref role="3Tt5mk" to="wl5u:2QSm86dp9Fu" resolve="segment" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2QSm86drCSU" role="3ElQJh">
                        <ref role="3cqZAo" node="2QSm86drwa7" resolve="segments" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2QSm86drsWf" role="3cqZAp">
                  <node concept="3cpWsn" id="2QSm86drsWg" role="3cpWs9">
                    <property role="TrG5h" value="relPos" />
                    <node concept="10OMs4" id="2QSm86drsWh" role="1tU5fm" />
                    <node concept="3cpWsd" id="2QSm86drNhr" role="33vP2m">
                      <node concept="2$xPTn" id="2QSm86drOY_" role="3uHU7w">
                        <property role="2$xPTl" value="0.5f" />
                      </node>
                      <node concept="2YIFZM" id="1MxN4Cv69nN" role="3uHU7B">
                        <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
                        <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
                        <node concept="2OqwBi" id="1MxN4Cv69nO" role="37wK5m">
                          <node concept="Jnkvi" id="1MxN4Cv69nP" role="2Oq$k0">
                            <ref role="1M0zk5" node="2QSm86dr97C" resolve="anchor" />
                          </node>
                          <node concept="3TrEf2" id="1MxN4Cv69nQ" role="2OqNvi">
                            <ref role="3Tt5mk" to="wl5u:2QSm86dp9Fw" resolve="relativePos" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1MxN4Cv69nR" role="37wK5m">
                          <ref role="3cqZAo" node="3yqPF1bPgXW" resolve="context" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2QSm86dsbFv" role="3cqZAp">
                  <node concept="3cpWsn" id="2QSm86dsbFw" role="3cpWs9">
                    <property role="TrG5h" value="p" />
                    <node concept="3uibUv" id="2QSm86dsbaI" role="1tU5fm">
                      <ref role="3uigEE" to="9s9o:~Vec2" resolve="Vec2" />
                    </node>
                    <node concept="2OqwBi" id="2QSm86dsbFx" role="33vP2m">
                      <node concept="2OqwBi" id="2QSm86dsbFy" role="2Oq$k0">
                        <node concept="37vLTw" id="2QSm86dsbFz" role="2Oq$k0">
                          <ref role="3cqZAo" node="2QSm86drCSP" resolve="seg" />
                        </node>
                        <node concept="liA8E" id="2QSm86dsbF$" role="2OqNvi">
                          <ref role="37wK5l" to="i1wt:6h7RWbAEwaE" resolve="box2d" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2QSm86dsbF_" role="2OqNvi">
                        <ref role="37wK5l" to="hdfp:~Body.getWorldPoint(org.jbox2d.common.Vec2)" resolve="getWorldPoint" />
                        <node concept="2ShNRf" id="2QSm86dsbFA" role="37wK5m">
                          <node concept="1pGfFk" id="2QSm86dsbFB" role="2ShVmc">
                            <ref role="37wK5l" to="9s9o:~Vec2.&lt;init&gt;(float,float)" resolve="Vec2" />
                            <node concept="FJ1c_" id="2QSm86dsbFC" role="37wK5m">
                              <node concept="3cmrfG" id="2QSm86dsbFD" role="3uHU7w">
                                <property role="3cmrfH" value="2" />
                              </node>
                              <node concept="17qRlL" id="2QSm86dsbFE" role="3uHU7B">
                                <node concept="37vLTw" id="2QSm86dsbFF" role="3uHU7B">
                                  <ref role="3cqZAo" node="2QSm86drsWg" resolve="relPos" />
                                </node>
                                <node concept="2OqwBi" id="2QSm86dsbFG" role="3uHU7w">
                                  <node concept="37vLTw" id="2QSm86dsbFH" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2QSm86drCSP" resolve="seg" />
                                  </node>
                                  <node concept="liA8E" id="2QSm86dsbFI" role="2OqNvi">
                                    <ref role="37wK5l" to="i1wt:2QSm86drUxp" resolve="getExtentX" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2$xPTn" id="2QSm86dsbFJ" role="37wK5m">
                              <property role="2$xPTl" value="0.0f" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2QSm86drsWz" role="3cqZAp">
                  <node concept="3cpWsn" id="2QSm86drsW$" role="3cpWs9">
                    <property role="TrG5h" value="circle" />
                    <node concept="3uibUv" id="2QSm86dsaBr" role="1tU5fm">
                      <ref role="3uigEE" to="i1wt:6h7RWbAEc0b" resolve="Circle" />
                    </node>
                    <node concept="2ShNRf" id="2QSm86drsWA" role="33vP2m">
                      <node concept="1pGfFk" id="2QSm86drsWB" role="2ShVmc">
                        <ref role="37wK5l" to="i1wt:6h7RWbAEc0s" resolve="Circle" />
                        <node concept="2OqwBi" id="2QSm86drsWC" role="37wK5m">
                          <node concept="3TrcHB" id="2QSm86drsWE" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="Jnkvi" id="2QSm86ds8j0" role="2Oq$k0">
                            <ref role="1M0zk5" node="2QSm86dr97C" resolve="anchor" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2QSm86dsedk" role="37wK5m">
                          <node concept="37vLTw" id="2QSm86dsdoh" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QSm86dsbFw" resolve="p" />
                          </node>
                          <node concept="2OwXpG" id="2QSm86dsfeO" role="2OqNvi">
                            <ref role="2Oxat5" to="9s9o:~Vec2.x" resolve="x" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2QSm86dsgAe" role="37wK5m">
                          <node concept="37vLTw" id="2QSm86dsg6d" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QSm86dsbFw" resolve="p" />
                          </node>
                          <node concept="2OwXpG" id="2QSm86dshBU" role="2OqNvi">
                            <ref role="2Oxat5" to="9s9o:~Vec2.y" resolve="y" />
                          </node>
                        </node>
                        <node concept="2$xPTn" id="2QSm86drsWH" role="37wK5m">
                          <property role="2$xPTl" value="0.03f" />
                        </node>
                        <node concept="2$xPTn" id="2QSm86drsWK" role="37wK5m">
                          <property role="2$xPTl" value="20.0f" />
                        </node>
                        <node concept="3clFbT" id="2QSm86drsWL" role="37wK5m" />
                        <node concept="37vLTw" id="1MxN4CuVYrZ" role="37wK5m">
                          <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2QSm86drsWN" role="3cqZAp">
                  <node concept="2OqwBi" id="2QSm86drsWO" role="3clFbG">
                    <node concept="37vLTw" id="1MxN4CuVYoR" role="2Oq$k0">
                      <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                    </node>
                    <node concept="liA8E" id="2QSm86drsWQ" role="2OqNvi">
                      <ref role="37wK5l" to="i1wt:6h7RWbApk6E" resolve="addItem" />
                      <node concept="37vLTw" id="2QSm86drsWR" role="37wK5m">
                        <ref role="3cqZAo" node="2QSm86drsW$" resolve="circle" />
                      </node>
                      <node concept="3clFbT" id="667ewDY3OPa" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2QSm86drsWS" role="3cqZAp">
                  <node concept="37vLTI" id="2QSm86drsWT" role="3clFbG">
                    <node concept="37vLTw" id="2QSm86drsWU" role="37vLTx">
                      <ref role="3cqZAo" node="2QSm86drsW$" resolve="circle" />
                    </node>
                    <node concept="3EllGN" id="2QSm86drsWV" role="37vLTJ">
                      <node concept="Jnkvi" id="2QSm86dsnde" role="3ElVtu">
                        <ref role="1M0zk5" node="2QSm86dr97C" resolve="anchor" />
                      </node>
                      <node concept="37vLTw" id="2QSm86drsWX" role="3ElQJh">
                        <ref role="3cqZAo" node="6KOiXOpusU7" resolve="points" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1MxN4CuX3e7" role="3cqZAp">
                  <node concept="1rXfSq" id="1MxN4CuX3e5" role="3clFbG">
                    <ref role="37wK5l" node="1MxN4CuX2x6" resolve="makeRevJoint" />
                    <node concept="37vLTw" id="1MxN4CuX3ZZ" role="37wK5m">
                      <ref role="3cqZAo" node="2QSm86drsW$" resolve="circle" />
                    </node>
                    <node concept="37vLTw" id="1MxN4CuX41$" role="37wK5m">
                      <ref role="3cqZAo" node="2QSm86drCSP" resolve="seg" />
                    </node>
                    <node concept="37vLTw" id="1MxN4CuX436" role="37wK5m">
                      <ref role="3cqZAo" node="2QSm86dsbFw" resolve="p" />
                    </node>
                    <node concept="37vLTw" id="1MxN4CuX44S" role="37wK5m">
                      <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="2QSm86dr97C" role="JncvA">
                <property role="TrG5h" value="anchor" />
                <node concept="2jxLKc" id="2QSm86dr97D" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Lx5PHliPC" role="3cqZAp" />
        <node concept="3clFbF" id="6h7RWbAqgL$" role="3cqZAp">
          <node concept="37vLTw" id="1MxN4CuVZbz" role="3clFbG">
            <ref role="3cqZAo" node="1MxN4CuVUmq" resolve="world" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Lx5PHkTvo" role="1B3o_S" />
      <node concept="3uibUv" id="6h7RWbAqev9" role="3clF45">
        <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
      </node>
      <node concept="37vLTG" id="6KOiXOpuhnU" role="3clF46">
        <property role="TrG5h" value="solution" />
        <node concept="3Tqbb2" id="6KOiXOpuhnT" role="1tU5fm">
          <ref role="ehGHo" to="wl5u:1MxN4Cv9BXK" resolve="Solution" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6h7RWbAAp2O" role="jymVt" />
    <node concept="2YIFZL" id="1MxN4CuXWff" role="jymVt">
      <property role="TrG5h" value="makeSegment" />
      <node concept="3clFbS" id="1MxN4CuXWfi" role="3clF47">
        <node concept="3cpWs8" id="1MxN4CuXXQh" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuXXQi" role="3cpWs9">
            <property role="TrG5h" value="p1" />
            <node concept="3uibUv" id="1MxN4CuXXQj" role="1tU5fm">
              <ref role="3uigEE" to="9s9o:~Vec2" resolve="Vec2" />
            </node>
            <node concept="2OqwBi" id="1MxN4CuXXQk" role="33vP2m">
              <node concept="2OqwBi" id="1MxN4CuXXQl" role="2Oq$k0">
                <node concept="37vLTw" id="1MxN4CuXXQm" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4CuXWUn" resolve="b1" />
                </node>
                <node concept="liA8E" id="1MxN4CuXXQn" role="2OqNvi">
                  <ref role="37wK5l" to="i1wt:6h7RWbAEwaE" resolve="box2d" />
                </node>
              </node>
              <node concept="liA8E" id="1MxN4CuXXQo" role="2OqNvi">
                <ref role="37wK5l" to="hdfp:~Body.getWorldCenter()" resolve="getWorldCenter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1MxN4CuXXQp" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuXXQq" role="3cpWs9">
            <property role="TrG5h" value="p2" />
            <node concept="3uibUv" id="1MxN4CuXXQr" role="1tU5fm">
              <ref role="3uigEE" to="9s9o:~Vec2" resolve="Vec2" />
            </node>
            <node concept="2OqwBi" id="1MxN4CuXXQs" role="33vP2m">
              <node concept="2OqwBi" id="1MxN4CuXXQt" role="2Oq$k0">
                <node concept="37vLTw" id="1MxN4CuXXQu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4CuXX11" resolve="b2" />
                </node>
                <node concept="liA8E" id="1MxN4CuXXQv" role="2OqNvi">
                  <ref role="37wK5l" to="i1wt:6h7RWbAEwaE" resolve="box2d" />
                </node>
              </node>
              <node concept="liA8E" id="1MxN4CuXXQw" role="2OqNvi">
                <ref role="37wK5l" to="hdfp:~Body.getWorldCenter()" resolve="getWorldCenter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1MxN4CuXXQx" role="3cqZAp" />
        <node concept="3cpWs8" id="1MxN4CuXXQy" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuXXQz" role="3cpWs9">
            <property role="TrG5h" value="mid" />
            <node concept="3uibUv" id="1MxN4CuXXQ$" role="1tU5fm">
              <ref role="3uigEE" to="9s9o:~Vec2" resolve="Vec2" />
            </node>
            <node concept="2OqwBi" id="1MxN4CuXXQ_" role="33vP2m">
              <node concept="2OqwBi" id="1MxN4CuXXQA" role="2Oq$k0">
                <node concept="37vLTw" id="1MxN4CuXXQB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4CuXXQi" resolve="p1" />
                </node>
                <node concept="liA8E" id="1MxN4CuXXQC" role="2OqNvi">
                  <ref role="37wK5l" to="9s9o:~Vec2.add(org.jbox2d.common.Vec2)" resolve="add" />
                  <node concept="37vLTw" id="1MxN4CuXXQD" role="37wK5m">
                    <ref role="3cqZAo" node="1MxN4CuXXQq" resolve="p2" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1MxN4CuXXQE" role="2OqNvi">
                <ref role="37wK5l" to="9s9o:~Vec2.mul(float)" resolve="mul" />
                <node concept="2$xPTn" id="1MxN4CuXXQF" role="37wK5m">
                  <property role="2$xPTl" value="0.5f" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1MxN4CuXXQG" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuXXQH" role="3cpWs9">
            <property role="TrG5h" value="delta" />
            <node concept="3uibUv" id="1MxN4CuXXQI" role="1tU5fm">
              <ref role="3uigEE" to="9s9o:~Vec2" resolve="Vec2" />
            </node>
            <node concept="2OqwBi" id="1MxN4CuXXQJ" role="33vP2m">
              <node concept="37vLTw" id="1MxN4CuXXQK" role="2Oq$k0">
                <ref role="3cqZAo" node="1MxN4CuXXQq" resolve="p2" />
              </node>
              <node concept="liA8E" id="1MxN4CuXXQL" role="2OqNvi">
                <ref role="37wK5l" to="9s9o:~Vec2.sub(org.jbox2d.common.Vec2)" resolve="sub" />
                <node concept="37vLTw" id="1MxN4CuXXQM" role="37wK5m">
                  <ref role="3cqZAo" node="1MxN4CuXXQi" resolve="p1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1MxN4CuXXQN" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuXXQO" role="3cpWs9">
            <property role="TrG5h" value="dl" />
            <node concept="10OMs4" id="1MxN4CuXXQP" role="1tU5fm" />
            <node concept="3cpWsd" id="1MxN4CuYQpd" role="33vP2m">
              <node concept="2$xPTn" id="1MxN4CuYQPD" role="3uHU7w">
                <property role="2$xPTl" value="0.1f" />
              </node>
              <node concept="2OqwBi" id="1MxN4CuXXQQ" role="3uHU7B">
                <node concept="37vLTw" id="1MxN4CuXXQR" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4CuXXQH" resolve="delta" />
                </node>
                <node concept="liA8E" id="1MxN4CuXXQS" role="2OqNvi">
                  <ref role="37wK5l" to="9s9o:~Vec2.length()" resolve="length" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1MxN4CuXXQT" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuXXQU" role="3cpWs9">
            <property role="TrG5h" value="angle" />
            <node concept="10OMs4" id="1MxN4CuXXQV" role="1tU5fm" />
            <node concept="1rXfSq" id="1MxN4CuXXQW" role="33vP2m">
              <ref role="37wK5l" node="6h7RWbAAqVn" resolve="getAngle" />
              <node concept="37vLTw" id="1MxN4CuXXQX" role="37wK5m">
                <ref role="3cqZAo" node="1MxN4CuXXQH" resolve="delta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1MxN4CuXXR6" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuXXR7" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="1MxN4CuXXR8" role="1tU5fm">
              <ref role="3uigEE" to="i1wt:4Lx5PHl1Q3" resolve="Box" />
            </node>
            <node concept="2ShNRf" id="1MxN4CuXXR9" role="33vP2m">
              <node concept="1pGfFk" id="1MxN4CuXXRa" role="2ShVmc">
                <ref role="37wK5l" to="i1wt:4Lx5PHl1Uh" resolve="Box" />
                <node concept="37vLTw" id="1MxN4CuYchV" role="37wK5m">
                  <ref role="3cqZAo" node="1MxN4CuY9uP" resolve="name" />
                </node>
                <node concept="2OqwBi" id="1MxN4CuXXRe" role="37wK5m">
                  <node concept="37vLTw" id="1MxN4CuXXRf" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MxN4CuXXQz" resolve="mid" />
                  </node>
                  <node concept="2OwXpG" id="1MxN4CuXXRg" role="2OqNvi">
                    <ref role="2Oxat5" to="9s9o:~Vec2.x" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1MxN4CuXXRh" role="37wK5m">
                  <node concept="37vLTw" id="1MxN4CuXXRi" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MxN4CuXXQz" resolve="mid" />
                  </node>
                  <node concept="2OwXpG" id="1MxN4CuXXRj" role="2OqNvi">
                    <ref role="2Oxat5" to="9s9o:~Vec2.y" resolve="y" />
                  </node>
                </node>
                <node concept="3cpWs3" id="1MxN4CuXXRk" role="37wK5m">
                  <node concept="37vLTw" id="1MxN4CuXXRl" role="3uHU7w">
                    <ref role="3cqZAo" node="1MxN4CuXXQO" resolve="dl" />
                  </node>
                  <node concept="2$xPTn" id="1MxN4CuXXRm" role="3uHU7B">
                    <property role="2$xPTl" value="0.05f" />
                  </node>
                </node>
                <node concept="2$xPTn" id="1MxN4CuXXRn" role="37wK5m">
                  <property role="2$xPTl" value="0.05f" />
                </node>
                <node concept="37vLTw" id="1MxN4CuXXRo" role="37wK5m">
                  <ref role="3cqZAo" node="1MxN4CuXXQU" resolve="angle" />
                </node>
                <node concept="37vLTw" id="1MxN4CuXXRp" role="37wK5m">
                  <ref role="3cqZAo" node="1MxN4CuY665" resolve="density" />
                </node>
                <node concept="3clFbT" id="1MxN4CuXXRq" role="37wK5m" />
                <node concept="37vLTw" id="1MxN4CuXXRr" role="37wK5m">
                  <ref role="3cqZAo" node="1MxN4CuXXtb" resolve="world" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MxN4CuXXRs" role="3cqZAp">
          <node concept="2OqwBi" id="1MxN4CuXXRt" role="3clFbG">
            <node concept="37vLTw" id="1MxN4CuXXRu" role="2Oq$k0">
              <ref role="3cqZAo" node="1MxN4CuXXtb" resolve="world" />
            </node>
            <node concept="liA8E" id="1MxN4CuXXRv" role="2OqNvi">
              <ref role="37wK5l" to="i1wt:6h7RWbApk6E" resolve="addItem" />
              <node concept="37vLTw" id="1MxN4CuXXRw" role="37wK5m">
                <ref role="3cqZAo" node="1MxN4CuXXR7" resolve="link" />
              </node>
              <node concept="3clFbT" id="667ewDY3P9v" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MxN4CuXXRB" role="3cqZAp">
          <node concept="1rXfSq" id="1MxN4CuXXRC" role="3clFbG">
            <ref role="37wK5l" node="1MxN4CuX2x6" resolve="makeRevJoint" />
            <node concept="37vLTw" id="1MxN4CuXXRD" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4CuXWUn" resolve="b1" />
            </node>
            <node concept="37vLTw" id="1MxN4CuXXRE" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4CuXXR7" resolve="link" />
            </node>
            <node concept="37vLTw" id="1MxN4CuXXRF" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4CuXXQi" resolve="p1" />
            </node>
            <node concept="37vLTw" id="1MxN4CuXXRG" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4CuXXtb" resolve="world" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MxN4CuXXRH" role="3cqZAp">
          <node concept="1rXfSq" id="1MxN4CuXXRI" role="3clFbG">
            <ref role="37wK5l" node="1MxN4CuX2x6" resolve="makeRevJoint" />
            <node concept="37vLTw" id="1MxN4CuXXRJ" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4CuXX11" resolve="b2" />
            </node>
            <node concept="37vLTw" id="1MxN4CuXXRK" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4CuXXR7" resolve="link" />
            </node>
            <node concept="37vLTw" id="1MxN4CuXXRL" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4CuXXQq" resolve="p2" />
            </node>
            <node concept="37vLTw" id="1MxN4CuXXRM" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4CuXXtb" resolve="world" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MxN4CuY2yi" role="3cqZAp">
          <node concept="37vLTw" id="1MxN4CuY2yg" role="3clFbG">
            <ref role="3cqZAo" node="1MxN4CuXXR7" resolve="link" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1MxN4CuXVlc" role="1B3o_S" />
      <node concept="3uibUv" id="1MxN4CuY0Gg" role="3clF45">
        <ref role="3uigEE" to="i1wt:4Lx5PHl1Q3" resolve="Box" />
      </node>
      <node concept="37vLTG" id="1MxN4CuY9uP" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1MxN4CuYajU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1MxN4CuXWUn" role="3clF46">
        <property role="TrG5h" value="b1" />
        <node concept="3uibUv" id="1MxN4CuXWUm" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4CuXX11" role="3clF46">
        <property role="TrG5h" value="b2" />
        <node concept="3uibUv" id="1MxN4CuXXdw" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4CuY665" role="3clF46">
        <property role="TrG5h" value="density" />
        <node concept="10OMs4" id="1MxN4CuY79$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1MxN4CuXXtb" role="3clF46">
        <property role="TrG5h" value="world" />
        <node concept="3uibUv" id="1MxN4CuXXDE" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1MxN4CuXZSI" role="jymVt" />
    <node concept="2YIFZL" id="1MxN4CuX2x6" role="jymVt">
      <property role="TrG5h" value="makeRevJoint" />
      <node concept="3clFbS" id="1MxN4CuWWRJ" role="3clF47">
        <node concept="3cpWs8" id="1MxN4CuWZHO" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuWZHP" role="3cpWs9">
            <property role="TrG5h" value="rjd" />
            <node concept="3uibUv" id="1MxN4CuWZHQ" role="1tU5fm">
              <ref role="3uigEE" to="elf6:~RevoluteJointDef" resolve="RevoluteJointDef" />
            </node>
            <node concept="2ShNRf" id="1MxN4CuWZHR" role="33vP2m">
              <node concept="1pGfFk" id="1MxN4CuWZHS" role="2ShVmc">
                <ref role="37wK5l" to="elf6:~RevoluteJointDef.&lt;init&gt;()" resolve="RevoluteJointDef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MxN4CuWZHT" role="3cqZAp">
          <node concept="2OqwBi" id="1MxN4CuWZHU" role="3clFbG">
            <node concept="37vLTw" id="1MxN4CuWZHV" role="2Oq$k0">
              <ref role="3cqZAo" node="1MxN4CuWZHP" resolve="rjd" />
            </node>
            <node concept="liA8E" id="1MxN4CuWZHW" role="2OqNvi">
              <ref role="37wK5l" to="elf6:~RevoluteJointDef.initialize(org.jbox2d.dynamics.Body,org.jbox2d.dynamics.Body,org.jbox2d.common.Vec2)" resolve="initialize" />
              <node concept="2OqwBi" id="1MxN4CuWZHX" role="37wK5m">
                <node concept="37vLTw" id="1MxN4CuWZX_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4CuWXYR" resolve="axis" />
                </node>
                <node concept="liA8E" id="1MxN4CuWZHZ" role="2OqNvi">
                  <ref role="37wK5l" to="i1wt:6h7RWbAEwaE" resolve="box2d" />
                </node>
              </node>
              <node concept="2OqwBi" id="1MxN4CuWZI0" role="37wK5m">
                <node concept="37vLTw" id="1MxN4CuX06M" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4CuWYwo" resolve="part" />
                </node>
                <node concept="liA8E" id="1MxN4CuWZI2" role="2OqNvi">
                  <ref role="37wK5l" to="i1wt:6h7RWbAEwaE" resolve="box2d" />
                </node>
              </node>
              <node concept="37vLTw" id="1MxN4CuX0lM" role="37wK5m">
                <ref role="3cqZAo" node="1MxN4CuWZ8E" resolve="loc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MxN4CuWZI4" role="3cqZAp">
          <node concept="37vLTI" id="1MxN4CuWZI5" role="3clFbG">
            <node concept="3clFbT" id="1MxN4CuWZI6" role="37vLTx" />
            <node concept="2OqwBi" id="1MxN4CuWZI7" role="37vLTJ">
              <node concept="37vLTw" id="1MxN4CuWZI8" role="2Oq$k0">
                <ref role="3cqZAo" node="1MxN4CuWZHP" resolve="rjd" />
              </node>
              <node concept="2OwXpG" id="1MxN4CuWZI9" role="2OqNvi">
                <ref role="2Oxat5" to="elf6:~RevoluteJointDef.enableMotor" resolve="enableMotor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1MxN4CuWZIa" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4CuWZIb" role="3cpWs9">
            <property role="TrG5h" value="j1" />
            <node concept="3uibUv" id="1MxN4CuWZIc" role="1tU5fm">
              <ref role="3uigEE" to="elf6:~Joint" resolve="Joint" />
            </node>
            <node concept="2OqwBi" id="1MxN4CuWZId" role="33vP2m">
              <node concept="2OqwBi" id="1MxN4CuWZIe" role="2Oq$k0">
                <node concept="37vLTw" id="1MxN4CuWZIf" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4CuX0rA" resolve="world" />
                </node>
                <node concept="liA8E" id="1MxN4CuWZIg" role="2OqNvi">
                  <ref role="37wK5l" to="i1wt:6h7RWbApvZw" resolve="box2d" />
                </node>
              </node>
              <node concept="liA8E" id="1MxN4CuWZIh" role="2OqNvi">
                <ref role="37wK5l" to="hdfp:~World.createJoint(org.jbox2d.dynamics.joints.JointDef)" resolve="createJoint" />
                <node concept="37vLTw" id="1MxN4CuWZIi" role="37wK5m">
                  <ref role="3cqZAo" node="1MxN4CuWZHP" resolve="rjd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4CuWXYR" role="3clF46">
        <property role="TrG5h" value="axis" />
        <node concept="3uibUv" id="1MxN4CuWXYQ" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4CuWYwo" role="3clF46">
        <property role="TrG5h" value="part" />
        <node concept="3uibUv" id="1MxN4CuWYYV" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAEGaV" resolve="IDrawableBody" />
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4CuWZ8E" role="3clF46">
        <property role="TrG5h" value="loc" />
        <node concept="3uibUv" id="1MxN4CuWZ$8" role="1tU5fm">
          <ref role="3uigEE" to="9s9o:~Vec2" resolve="Vec2" />
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4CuX0rA" role="3clF46">
        <property role="TrG5h" value="world" />
        <node concept="3uibUv" id="1MxN4CuX0VP" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
        </node>
      </node>
      <node concept="3cqZAl" id="1MxN4CuWWNb" role="3clF45" />
      <node concept="3Tm6S6" id="1MxN4CuWXsj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6h7RWbACT6_" role="jymVt" />
    <node concept="2YIFZL" id="6h7RWbAAqVn" role="jymVt">
      <property role="TrG5h" value="getAngle" />
      <node concept="3clFbS" id="6h7RWbAAqVq" role="3clF47">
        <node concept="3clFbF" id="6h7RWbAArOK" role="3cqZAp">
          <node concept="10QFUN" id="6h7RWbAAvQg" role="3clFbG">
            <node concept="10OMs4" id="6h7RWbAAw9h" role="10QFUM" />
            <node concept="1eOMI4" id="6h7RWbAAvpP" role="10QFUP">
              <node concept="2YIFZM" id="6h7RWbAAtdz" role="1eOMHV">
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <ref role="37wK5l" to="wyt6:~Math.atan2(double,double)" resolve="atan2" />
                <node concept="2OqwBi" id="6h7RWbAAtKS" role="37wK5m">
                  <node concept="37vLTw" id="6h7RWbAAtn7" role="2Oq$k0">
                    <ref role="3cqZAo" node="6h7RWbAAr$Z" resolve="v" />
                  </node>
                  <node concept="2OwXpG" id="6h7RWbAAtM5" role="2OqNvi">
                    <ref role="2Oxat5" to="9s9o:~Vec2.y" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6h7RWbAAutr" role="37wK5m">
                  <node concept="37vLTw" id="6h7RWbAAu5b" role="2Oq$k0">
                    <ref role="3cqZAo" node="6h7RWbAAr$Z" resolve="v" />
                  </node>
                  <node concept="2OwXpG" id="6h7RWbAAuuR" role="2OqNvi">
                    <ref role="2Oxat5" to="9s9o:~Vec2.x" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6h7RWbAAqhH" role="1B3o_S" />
      <node concept="10OMs4" id="6h7RWbAAqRu" role="3clF45" />
      <node concept="37vLTG" id="6h7RWbAAr$Z" role="3clF46">
        <property role="TrG5h" value="v" />
        <node concept="3uibUv" id="6h7RWbAAr$Y" role="1tU5fm">
          <ref role="3uigEE" to="9s9o:~Vec2" resolve="Vec2" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6KOiXOpunzw" role="jymVt" />
    <node concept="2tJIrI" id="6KOiXOpunKc" role="jymVt" />
  </node>
  <node concept="13h7C7" id="4Lx5PHkYP5">
    <property role="3GE5qa" value="product" />
    <ref role="13h7C2" to="wl5u:4Lx5PHkyx9" resolve="Product" />
    <node concept="13hLZK" id="4Lx5PHkYP6" role="13h7CW">
      <node concept="3clFbS" id="4Lx5PHkYP7" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1MxN4Cv9iaE" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="1MxN4Cv9iaF" role="1B3o_S" />
      <node concept="3clFbS" id="1MxN4Cv9iaO" role="3clF47">
        <node concept="3clFbJ" id="1MxN4Cv9inS" role="3cqZAp">
          <node concept="3clFbS" id="1MxN4Cv9inU" role="3clFbx">
            <node concept="3cpWs6" id="1MxN4Cv9j8b" role="3cqZAp">
              <node concept="2YIFZM" id="667ewDXZozz" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="667ewDXZoSN" role="37wK5m">
                  <node concept="13iPFW" id="667ewDXZoCE" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="667ewDXZpmR" role="2OqNvi">
                    <ref role="3TtcxE" to="wl5u:667ewDXZ7ug" resolve="requiredPoints" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1MxN4Cv9iBv" role="3clFbw">
            <node concept="37vLTw" id="1MxN4Cv9ioO" role="2Oq$k0">
              <ref role="3cqZAo" node="1MxN4Cv9iaP" resolve="kind" />
            </node>
            <node concept="2Zo12i" id="1MxN4Cv9iXv" role="2OqNvi">
              <node concept="chp4Y" id="667ewDXZoeJ" role="2Zo12j">
                <ref role="cht4Q" to="wl5u:667ewDXZ7tS" resolve="RequiredPoint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="667ewDXWzGa" role="3cqZAp">
          <node concept="3clFbS" id="667ewDXWzGc" role="3clFbx">
            <node concept="3cpWs8" id="667ewDXYT3J" role="3cqZAp">
              <node concept="3cpWsn" id="667ewDXYT3K" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="A3Dl8" id="667ewDXYT2x" role="1tU5fm">
                  <node concept="3Tqbb2" id="667ewDXYT2$" role="A3Ik2">
                    <ref role="ehGHo" to="wl5u:1MxN4Cv9BXK" resolve="Solution" />
                  </node>
                </node>
                <node concept="2OqwBi" id="667ewDXYT3L" role="33vP2m">
                  <node concept="2OqwBi" id="667ewDXYT3M" role="2Oq$k0">
                    <node concept="2OqwBi" id="667ewDXYT3N" role="2Oq$k0">
                      <node concept="13iPFW" id="667ewDXYT3O" role="2Oq$k0" />
                      <node concept="I4A8Y" id="667ewDXYT3P" role="2OqNvi" />
                    </node>
                    <node concept="2RRcyG" id="667ewDXYT3Q" role="2OqNvi">
                      <ref role="2RRcyH" to="wl5u:1MxN4Cv9BXK" resolve="Solution" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="667ewDXYT3R" role="2OqNvi">
                    <node concept="1bVj0M" id="667ewDXYT3S" role="23t8la">
                      <node concept="3clFbS" id="667ewDXYT3T" role="1bW5cS">
                        <node concept="3clFbF" id="667ewDXYT3U" role="3cqZAp">
                          <node concept="17R0WA" id="667ewDXYT3V" role="3clFbG">
                            <node concept="13iPFW" id="667ewDXYT3W" role="3uHU7w" />
                            <node concept="2OqwBi" id="667ewDXYT3X" role="3uHU7B">
                              <node concept="37vLTw" id="667ewDXYT3Y" role="2Oq$k0">
                                <ref role="3cqZAo" node="667ewDXYT40" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="667ewDXYT3Z" role="2OqNvi">
                                <ref role="3Tt5mk" to="wl5u:1MxN4Cv9CQm" resolve="product" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="667ewDXYT40" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="667ewDXYT41" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="667ewDXYTrv" role="3cqZAp">
              <node concept="2YIFZM" id="667ewDXYULN" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="667ewDXYUSg" role="37wK5m">
                  <ref role="3cqZAo" node="667ewDXYT3K" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="667ewDXW$8v" role="3clFbw">
            <node concept="37vLTw" id="667ewDXWzTo" role="2Oq$k0">
              <ref role="3cqZAo" node="1MxN4Cv9iaP" resolve="kind" />
            </node>
            <node concept="2Zo12i" id="667ewDXW$$e" role="2OqNvi">
              <node concept="chp4Y" id="667ewDXW$Bv" role="2Zo12j">
                <ref role="cht4Q" to="wl5u:1MxN4Cv9BXK" resolve="Solution" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MxN4Cv9iaZ" role="3cqZAp">
          <node concept="2OqwBi" id="1MxN4Cv9iaW" role="3clFbG">
            <node concept="13iAh5" id="1MxN4Cv9iaX" role="2Oq$k0">
              <ref role="3eA5LN" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
            </node>
            <node concept="2qgKlT" id="1MxN4Cv9iaY" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:52_Geb4QDV$" resolve="getScope" />
              <node concept="37vLTw" id="1MxN4Cv9iaU" role="37wK5m">
                <ref role="3cqZAo" node="1MxN4Cv9iaP" resolve="kind" />
              </node>
              <node concept="37vLTw" id="1MxN4Cv9iaV" role="37wK5m">
                <ref role="3cqZAo" node="1MxN4Cv9iaR" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4Cv9iaP" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="1MxN4Cv9iaQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1MxN4Cv9iaR" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="1MxN4Cv9iaS" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1MxN4Cv9iaT" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6KOiXOpvgX9">
    <property role="3GE5qa" value="mechanism" />
    <ref role="13h7C2" to="wl5u:6KOiXOptLa3" resolve="IPoint" />
    <node concept="13i0hz" id="6KOiXOpvgY_" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getPointRef" />
      <node concept="3Tm1VV" id="6KOiXOpvgYA" role="1B3o_S" />
      <node concept="3Tqbb2" id="6KOiXOpvh1n" role="3clF45">
        <ref role="ehGHo" to="wl5u:6KOiXOptOeJ" resolve="PointRef" />
      </node>
      <node concept="3clFbS" id="6KOiXOpvgYC" role="3clF47" />
    </node>
    <node concept="13hLZK" id="6KOiXOpvgXa" role="13h7CW">
      <node concept="3clFbS" id="6KOiXOpvgXb" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6KOiXOpvh9U">
    <property role="3GE5qa" value="mechanism" />
    <ref role="13h7C2" to="wl5u:6KOiXOptOeJ" resolve="PointRef" />
    <node concept="13hLZK" id="6KOiXOpvh9V" role="13h7CW">
      <node concept="3clFbS" id="6KOiXOpvh9W" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6KOiXOpvhcB" role="13h7CS">
      <property role="TrG5h" value="getPointRef" />
      <ref role="13i0hy" node="6KOiXOpvgY_" resolve="getPointRef" />
      <node concept="3Tm1VV" id="6KOiXOpvhcC" role="1B3o_S" />
      <node concept="3clFbS" id="6KOiXOpvhcF" role="3clF47">
        <node concept="3clFbF" id="6KOiXOpvhfs" role="3cqZAp">
          <node concept="13iPFW" id="6KOiXOpvhfr" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tqbb2" id="6KOiXOpvhcG" role="3clF45">
        <ref role="ehGHo" to="wl5u:6KOiXOptOeJ" resolve="PointRef" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6h7RWbAuq9E">
    <property role="3GE5qa" value="mechanism" />
    <ref role="13h7C2" to="wl5u:6h7RWbAuq9f" resolve="IElement" />
    <node concept="13i0hz" id="6h7RWbAuq9P" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="points" />
      <node concept="3Tm1VV" id="6h7RWbAuq9Q" role="1B3o_S" />
      <node concept="A3Dl8" id="6h7RWbAuqgh" role="3clF45">
        <node concept="3Tqbb2" id="6h7RWbAuqj$" role="A3Ik2">
          <ref role="ehGHo" to="wl5u:6KOiXOptX5F" resolve="PointDef" />
        </node>
      </node>
      <node concept="3clFbS" id="6h7RWbAuq9S" role="3clF47">
        <node concept="3clFbF" id="2QSm86do$_3" role="3cqZAp">
          <node concept="2ShNRf" id="2QSm86do$_1" role="3clFbG">
            <node concept="Tc6Ow" id="2QSm86do_N2" role="2ShVmc">
              <node concept="3Tqbb2" id="2QSm86doAdO" role="HW$YZ">
                <ref role="ehGHo" to="wl5u:6KOiXOptX5F" resolve="PointDef" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6h7RWbAuq9F" role="13h7CW">
      <node concept="3clFbS" id="6h7RWbAuq9G" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6h7RWbAur9N">
    <property role="3GE5qa" value="mechanism" />
    <ref role="13h7C2" to="wl5u:4Lx5PHkDsO" resolve="Segment" />
    <node concept="13hLZK" id="6h7RWbAur9O" role="13h7CW">
      <node concept="3clFbS" id="6h7RWbAur9P" role="2VODD2">
        <node concept="3clFbF" id="6h7RWbACYme" role="3cqZAp">
          <node concept="37vLTI" id="6h7RWbACZhy" role="3clFbG">
            <node concept="2OqwBi" id="6h7RWbACYvG" role="37vLTJ">
              <node concept="13iPFW" id="6h7RWbACYmd" role="2Oq$k0" />
              <node concept="3TrEf2" id="6h7RWbACYKZ" role="2OqNvi">
                <ref role="3Tt5mk" to="wl5u:6h7RWbACWzN" resolve="density" />
              </node>
            </node>
            <node concept="2pJPEk" id="6h7RWbAD4Vl" role="37vLTx">
              <node concept="2pJPED" id="6h7RWbAD51P" role="2pJPEn">
                <ref role="2pJxaS" to="5qo5:4rZeNQ6Oerq" resolve="NumberLiteral" />
                <node concept="2pJxcG" id="6h7RWbAD56l" role="2pJxcM">
                  <ref role="2pJxcJ" to="5qo5:4rZeNQ6Oert" resolve="value" />
                  <node concept="WxPPo" id="6h7RWbAD5dB" role="28ntcv">
                    <node concept="Xl_RD" id="6h7RWbAD5dA" role="WxPPp">
                      <property role="Xl_RC" value="10" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6h7RWbAur9Y" role="13h7CS">
      <property role="TrG5h" value="points" />
      <ref role="13i0hy" node="6h7RWbAuq9P" resolve="points" />
      <node concept="3Tm1VV" id="6h7RWbAur9Z" role="1B3o_S" />
      <node concept="3clFbS" id="6h7RWbAura3" role="3clF47">
        <node concept="3clFbF" id="6h7RWbAurGC" role="3cqZAp">
          <node concept="2OqwBi" id="1MxN4CuWwdc" role="3clFbG">
            <node concept="2ShNRf" id="6h7RWbAurG$" role="2Oq$k0">
              <node concept="Tc6Ow" id="6h7RWbAusiQ" role="2ShVmc">
                <node concept="3Tqbb2" id="6h7RWbAusw6" role="HW$YZ">
                  <ref role="ehGHo" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
                </node>
                <node concept="2OqwBi" id="6h7RWbAuVxU" role="HW$Y0">
                  <node concept="2OqwBi" id="6h7RWbAuUYZ" role="2Oq$k0">
                    <node concept="2OqwBi" id="6h7RWbAusU$" role="2Oq$k0">
                      <node concept="13iPFW" id="6h7RWbAusGA" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6h7RWbAutbU" role="2OqNvi">
                        <ref role="3Tt5mk" to="wl5u:6KOiXOptKtF" resolve="start" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6h7RWbAuViW" role="2OqNvi">
                      <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6h7RWbAuVTn" role="2OqNvi">
                    <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6h7RWbAuXml" role="HW$Y0">
                  <node concept="2OqwBi" id="6h7RWbAuWxv" role="2Oq$k0">
                    <node concept="2OqwBi" id="6h7RWbAuttI" role="2Oq$k0">
                      <node concept="13iPFW" id="6h7RWbAuthE" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6h7RWbAutJ6" role="2OqNvi">
                        <ref role="3Tt5mk" to="wl5u:6KOiXOptKyL" resolve="end" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6h7RWbAuX9m" role="2OqNvi">
                      <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6h7RWbAuXM5" role="2OqNvi">
                    <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="v3k3i" id="1MxN4CuWxQG" role="2OqNvi">
              <node concept="chp4Y" id="1MxN4CuWy26" role="v3oSu">
                <ref role="cht4Q" to="wl5u:6KOiXOptX5F" resolve="PointDef" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6h7RWbAura4" role="3clF45">
        <node concept="3Tqbb2" id="6h7RWbAura5" role="A3Ik2">
          <ref role="ehGHo" to="wl5u:6KOiXOptX5F" resolve="PointDef" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2QSm86dqncP">
    <property role="3GE5qa" value="mechanism" />
    <ref role="13h7C2" to="wl5u:4Lx5PHnXdT" resolve="Mechanism" />
    <node concept="13hLZK" id="2QSm86dqncQ" role="13h7CW">
      <node concept="3clFbS" id="2QSm86dqncR" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2QSm86dqnd0" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="2QSm86dqnd1" role="1B3o_S" />
      <node concept="3clFbS" id="2QSm86dqnda" role="3clF47">
        <node concept="3clFbJ" id="2QSm86dqqtf" role="3cqZAp">
          <node concept="3clFbS" id="2QSm86dqqth" role="3clFbx">
            <node concept="3cpWs6" id="2QSm86dqrZm" role="3cqZAp">
              <node concept="2YIFZM" id="2QSm86dqs5V" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="2QSm86dqspr" role="37wK5m">
                  <node concept="13iPFW" id="2QSm86dqsbZ" role="2Oq$k0" />
                  <node concept="2Rf3mk" id="2QSm86dqsY0" role="2OqNvi">
                    <node concept="1xMEDy" id="2QSm86dqsY2" role="1xVPHs">
                      <node concept="chp4Y" id="2QSm86dqt57" role="ri$Ld">
                        <ref role="cht4Q" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2QSm86dqqGT" role="3clFbw">
            <node concept="37vLTw" id="2QSm86dqqu3" role="2Oq$k0">
              <ref role="3cqZAo" node="2QSm86dqndb" resolve="kind" />
            </node>
            <node concept="2Zo12i" id="2QSm86dqr2R" role="2OqNvi">
              <node concept="chp4Y" id="2QSm86dqr66" role="2Zo12j">
                <ref role="cht4Q" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QSm86dqndl" role="3cqZAp">
          <node concept="2OqwBi" id="2QSm86dqndi" role="3clFbG">
            <node concept="13iAh5" id="2QSm86dqndj" role="2Oq$k0">
              <ref role="3eA5LN" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
            </node>
            <node concept="2qgKlT" id="2QSm86dqndk" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:52_Geb4QDV$" resolve="getScope" />
              <node concept="37vLTw" id="2QSm86dqndg" role="37wK5m">
                <ref role="3cqZAo" node="2QSm86dqndb" resolve="kind" />
              </node>
              <node concept="37vLTw" id="2QSm86dqndh" role="37wK5m">
                <ref role="3cqZAo" node="2QSm86dqndd" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2QSm86dqndb" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="2QSm86dqndc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2QSm86dqndd" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="2QSm86dqnde" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2QSm86dqndf" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="667ewDY1gaj" role="13h7CS">
      <property role="TrG5h" value="allPoints" />
      <node concept="3Tm1VV" id="667ewDY1gak" role="1B3o_S" />
      <node concept="A3Dl8" id="667ewDY1tUo" role="3clF45">
        <node concept="3Tqbb2" id="667ewDY1uIM" role="A3Ik2">
          <ref role="ehGHo" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
        </node>
      </node>
      <node concept="3clFbS" id="667ewDY1gam" role="3clF47">
        <node concept="3clFbF" id="667ewDY1ggr" role="3cqZAp">
          <node concept="2OqwBi" id="667ewDY1ms7" role="3clFbG">
            <node concept="2OqwBi" id="667ewDY1iJn" role="2Oq$k0">
              <node concept="2OqwBi" id="667ewDY1gpT" role="2Oq$k0">
                <node concept="13iPFW" id="667ewDY1ggq" role="2Oq$k0" />
                <node concept="3Tsc0h" id="667ewDY1gF4" role="2OqNvi">
                  <ref role="3TtcxE" to="wl5u:4Lx5PHoSZt" resolve="fixedPoints" />
                </node>
              </node>
              <node concept="4Tj9Z" id="667ewDY1llP" role="2OqNvi">
                <node concept="2OqwBi" id="667ewDY1lzt" role="576Qk">
                  <node concept="13iPFW" id="667ewDY1lnp" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="667ewDY1lRZ" role="2OqNvi">
                    <ref role="3TtcxE" to="wl5u:6KOiXOptYSQ" resolve="movingPoints" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="4Tj9Z" id="667ewDY1n2b" role="2OqNvi">
              <node concept="2OqwBi" id="667ewDY1pyk" role="576Qk">
                <node concept="2OqwBi" id="667ewDY1nCO" role="2Oq$k0">
                  <node concept="13iPFW" id="667ewDY1nqv" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="667ewDY1nYt" role="2OqNvi">
                    <ref role="3TtcxE" to="wl5u:4Lx5PHoT0R" resolve="elements" />
                  </node>
                </node>
                <node concept="v3k3i" id="667ewDY1rIn" role="2OqNvi">
                  <node concept="chp4Y" id="667ewDY1uLK" role="v3oSu">
                    <ref role="cht4Q" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1MxN4CuWuBm">
    <property role="3GE5qa" value="mechanism" />
    <ref role="13h7C2" to="wl5u:1MxN4CuWs1X" resolve="Triangle" />
    <node concept="13i0hz" id="1MxN4CuWyfA" role="13h7CS">
      <property role="TrG5h" value="points" />
      <ref role="13i0hy" node="6h7RWbAuq9P" resolve="points" />
      <node concept="3Tm1VV" id="1MxN4CuWyfB" role="1B3o_S" />
      <node concept="3clFbS" id="1MxN4CuWyfC" role="3clF47">
        <node concept="3clFbF" id="1MxN4CuWyfD" role="3cqZAp">
          <node concept="2OqwBi" id="1MxN4CuWyfE" role="3clFbG">
            <node concept="2ShNRf" id="1MxN4CuWyfF" role="2Oq$k0">
              <node concept="Tc6Ow" id="1MxN4CuWyfG" role="2ShVmc">
                <node concept="3Tqbb2" id="1MxN4CuWyfH" role="HW$YZ">
                  <ref role="ehGHo" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
                </node>
                <node concept="2OqwBi" id="1MxN4CuWyfI" role="HW$Y0">
                  <node concept="2OqwBi" id="1MxN4CuWyfJ" role="2Oq$k0">
                    <node concept="2OqwBi" id="1MxN4CuWyfK" role="2Oq$k0">
                      <node concept="13iPFW" id="1MxN4CuWyfL" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1MxN4CuWy$w" role="2OqNvi">
                        <ref role="3Tt5mk" to="wl5u:1MxN4CuWs20" resolve="a" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="1MxN4CuWyfN" role="2OqNvi">
                      <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1MxN4CuWyfO" role="2OqNvi">
                    <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1MxN4CuWz0R" role="HW$Y0">
                  <node concept="2OqwBi" id="1MxN4CuWz0S" role="2Oq$k0">
                    <node concept="2OqwBi" id="1MxN4CuWz0T" role="2Oq$k0">
                      <node concept="13iPFW" id="1MxN4CuWz0U" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1MxN4CuWzfS" role="2OqNvi">
                        <ref role="3Tt5mk" to="wl5u:1MxN4CuWs23" resolve="b" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="1MxN4CuWz0W" role="2OqNvi">
                      <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1MxN4CuWz0X" role="2OqNvi">
                    <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1MxN4CuWyfP" role="HW$Y0">
                  <node concept="2OqwBi" id="1MxN4CuWyfQ" role="2Oq$k0">
                    <node concept="2OqwBi" id="1MxN4CuWyfR" role="2Oq$k0">
                      <node concept="13iPFW" id="1MxN4CuWyfS" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1MxN4CuWzuL" role="2OqNvi">
                        <ref role="3Tt5mk" to="wl5u:1MxN4CuWs21" resolve="c" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="1MxN4CuWyfU" role="2OqNvi">
                      <ref role="37wK5l" node="6KOiXOpvgY_" resolve="getPointRef" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1MxN4CuWyfV" role="2OqNvi">
                    <ref role="3Tt5mk" to="wl5u:6KOiXOptOnD" resolve="point" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="v3k3i" id="1MxN4CuWyfW" role="2OqNvi">
              <node concept="chp4Y" id="1MxN4CuWyfX" role="v3oSu">
                <ref role="cht4Q" to="wl5u:6KOiXOptX5F" resolve="PointDef" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="1MxN4CuWyfY" role="3clF45">
        <node concept="3Tqbb2" id="1MxN4CuWyfZ" role="A3Ik2">
          <ref role="ehGHo" to="wl5u:6KOiXOptX5F" resolve="PointDef" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="1MxN4CuWuBn" role="13h7CW">
      <node concept="3clFbS" id="1MxN4CuWuBo" role="2VODD2">
        <node concept="3clFbF" id="1MxN4CuWuDB" role="3cqZAp">
          <node concept="37vLTI" id="1MxN4CuWuDC" role="3clFbG">
            <node concept="2OqwBi" id="1MxN4CuWuDD" role="37vLTJ">
              <node concept="13iPFW" id="1MxN4CuWuDE" role="2Oq$k0" />
              <node concept="3TrEf2" id="1MxN4CuWuDF" role="2OqNvi">
                <ref role="3Tt5mk" to="wl5u:1MxN4CuWs22" resolve="density" />
              </node>
            </node>
            <node concept="2pJPEk" id="1MxN4CuWuDG" role="37vLTx">
              <node concept="2pJPED" id="1MxN4CuWuDH" role="2pJPEn">
                <ref role="2pJxaS" to="5qo5:4rZeNQ6Oerq" resolve="NumberLiteral" />
                <node concept="2pJxcG" id="1MxN4CuWuDI" role="2pJxcM">
                  <ref role="2pJxcJ" to="5qo5:4rZeNQ6Oert" resolve="value" />
                  <node concept="WxPPo" id="1MxN4CuWuDJ" role="28ntcv">
                    <node concept="Xl_RD" id="1MxN4CuWuDK" role="WxPPp">
                      <property role="Xl_RC" value="10" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1MxN4Cv4ox0">
    <property role="3GE5qa" value="product.requirement" />
    <ref role="13h7C2" to="wl5u:1MxN4Cv1DgJ" resolve="IRequirement" />
    <node concept="13i0hz" id="2B9hOR0Ewrq" role="13h7CS">
      <property role="TrG5h" value="product" />
      <node concept="3Tm1VV" id="2B9hOR0Ewrr" role="1B3o_S" />
      <node concept="3Tqbb2" id="2B9hOR0EwyY" role="3clF45">
        <ref role="ehGHo" to="wl5u:4Lx5PHkyx9" resolve="Product" />
      </node>
      <node concept="3clFbS" id="2B9hOR0Ewrt" role="3clF47">
        <node concept="3clFbF" id="2B9hOR0EwAM" role="3cqZAp">
          <node concept="2OqwBi" id="2B9hOR0EwKf" role="3clFbG">
            <node concept="13iPFW" id="2B9hOR0EwAL" role="2Oq$k0" />
            <node concept="2Xjw5R" id="2B9hOR0EwWw" role="2OqNvi">
              <node concept="1xMEDy" id="2B9hOR0EwWy" role="1xVPHs">
                <node concept="chp4Y" id="2B9hOR0Ex0l" role="ri$Ld">
                  <ref role="cht4Q" to="wl5u:4Lx5PHkyx9" resolve="Product" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2B9hOR0GF$5" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="canBeChecked" />
      <node concept="3Tm1VV" id="2B9hOR0GF$6" role="1B3o_S" />
      <node concept="10P_77" id="2B9hOR0GFDJ" role="3clF45" />
      <node concept="3clFbS" id="2B9hOR0GF$8" role="3clF47">
        <node concept="3clFbF" id="2B9hOR0GFHr" role="3cqZAp">
          <node concept="3clFbT" id="2B9hOR0GFHq" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1MxN4Cv4oxu" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="check" />
      <node concept="3Tm1VV" id="1MxN4Cv4oxv" role="1B3o_S" />
      <node concept="3cqZAl" id="1MxN4Cv4o$P" role="3clF45" />
      <node concept="3clFbS" id="1MxN4Cv4oxx" role="3clF47">
        <node concept="3SKdUt" id="2B9hOR0HqS2" role="3cqZAp">
          <node concept="1PaTwC" id="2B9hOR0HqS3" role="1aUNEU">
            <node concept="3oM_SD" id="2B9hOR0HqS4" role="1PaTwD">
              <property role="3oM_SC" value="default:" />
            </node>
            <node concept="3oM_SD" id="2B9hOR0HqUy" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="2B9hOR0HqUH" role="1PaTwD">
              <property role="3oM_SC" value="empty" />
            </node>
            <node concept="3oM_SD" id="2B9hOR0HqUL" role="1PaTwD">
              <property role="3oM_SC" value="check-result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2B9hOR0HpSR" role="3cqZAp">
          <node concept="37vLTI" id="2B9hOR0Hqvj" role="3clFbG">
            <node concept="2pJPEk" id="2B9hOR0HqzT" role="37vLTx">
              <node concept="2pJPED" id="2B9hOR0HqDV" role="2pJPEn">
                <ref role="2pJxaS" to="wl5u:1MxN4Cv4CWz" resolve="ReqCheck" />
                <node concept="2pJxcG" id="2B9hOR0HuJX" role="2pJxcM">
                  <ref role="2pJxcJ" to="wl5u:2B9hOR0HuoI" resolve="checked" />
                  <node concept="WxPPo" id="2B9hOR0HuOz" role="28ntcv">
                    <node concept="3clFbT" id="2B9hOR0HuOy" role="WxPPp" />
                  </node>
                </node>
                <node concept="2pJxcG" id="2B9hOR0Hx0h" role="2pJxcM">
                  <ref role="2pJxcJ" to="wl5u:1MxN4Cv4CWX" resolve="explanation" />
                  <node concept="WxPPo" id="2B9hOR0Hx2Q" role="28ntcv">
                    <node concept="Xl_RD" id="2B9hOR0Hx2P" role="WxPPp">
                      <property role="Xl_RC" value="The requirement could not be checked." />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2B9hOR0Hq0z" role="37vLTJ">
              <node concept="13iPFW" id="2B9hOR0HpSQ" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2B9hOR0Hqdh" role="2OqNvi">
                <node concept="3CFYIy" id="2B9hOR0Hqdv" role="3CFYIz">
                  <ref role="3CFYIx" to="wl5u:1MxN4Cv4CWz" resolve="ReqCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4Cv4oFE" role="3clF46">
        <property role="TrG5h" value="world" />
        <node concept="3uibUv" id="1MxN4Cv4oFD" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1MxN4Cv4oJy" role="13h7CS">
      <property role="TrG5h" value="clear" />
      <node concept="3Tm1VV" id="1MxN4Cv4oJz" role="1B3o_S" />
      <node concept="3cqZAl" id="1MxN4Cv4oMZ" role="3clF45" />
      <node concept="3clFbS" id="1MxN4Cv4oJ_" role="3clF47">
        <node concept="3clFbF" id="1MxN4Cv4UQa" role="3cqZAp">
          <node concept="2OqwBi" id="1MxN4Cv4Vog" role="3clFbG">
            <node concept="2OqwBi" id="1MxN4Cv4UXQ" role="2Oq$k0">
              <node concept="13iPFW" id="1MxN4Cv4UQ9" role="2Oq$k0" />
              <node concept="3CFZ6_" id="1MxN4Cv4Va$" role="2OqNvi">
                <node concept="3CFYIy" id="1MxN4Cv4VcK" role="3CFYIz">
                  <ref role="3CFYIx" to="wl5u:1MxN4Cv4CWz" resolve="ReqCheck" />
                </node>
              </node>
            </node>
            <node concept="3YRAZt" id="1MxN4Cv4VTY" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2B9hOR0Eb5O" role="13h7CS">
      <property role="TrG5h" value="evaluateNumber" />
      <node concept="3Tm1VV" id="2B9hOR0Eb5P" role="1B3o_S" />
      <node concept="10OMs4" id="2B9hOR0EdOH" role="3clF45" />
      <node concept="3clFbS" id="2B9hOR0Eb5R" role="3clF47">
        <node concept="3clFbF" id="2B9hOR0Eer0" role="3cqZAp">
          <node concept="2YIFZM" id="2B9hOR0Eer2" role="3clFbG">
            <ref role="37wK5l" node="1MxN4Cv6bKZ" resolve="evaluateNumber" />
            <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
            <node concept="37vLTw" id="2B9hOR0EetE" role="37wK5m">
              <ref role="3cqZAo" node="2B9hOR0EdSx" resolve="expr" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2B9hOR0EdSx" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="2B9hOR0EdSw" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2B9hOR0EkzS" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="setStatus" />
      <node concept="3Tm1VV" id="2B9hOR0EkzT" role="1B3o_S" />
      <node concept="3cqZAl" id="2B9hOR0EkEv" role="3clF45" />
      <node concept="3clFbS" id="2B9hOR0EkzV" role="3clF47">
        <node concept="3clFbF" id="2B9hOR0EkMa" role="3cqZAp">
          <node concept="37vLTI" id="2B9hOR0EkMb" role="3clFbG">
            <node concept="2pJPEk" id="2B9hOR0EkMc" role="37vLTx">
              <node concept="2pJPED" id="2B9hOR0EkMd" role="2pJPEn">
                <ref role="2pJxaS" to="wl5u:1MxN4Cv4CWz" resolve="ReqCheck" />
                <node concept="2pJxcG" id="2B9hOR0HuXw" role="2pJxcM">
                  <ref role="2pJxcJ" to="wl5u:2B9hOR0HuoI" resolve="checked" />
                  <node concept="WxPPo" id="2B9hOR0Hv08" role="28ntcv">
                    <node concept="3clFbT" id="2B9hOR0Hv07" role="WxPPp">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="2B9hOR0EkMe" role="2pJxcM">
                  <ref role="2pJxcJ" to="wl5u:1MxN4Cv4CWV" resolve="satisfied" />
                  <node concept="WxPPo" id="2B9hOR0EkMf" role="28ntcv">
                    <node concept="37vLTw" id="2B9hOR0EkMg" role="WxPPp">
                      <ref role="3cqZAo" node="2B9hOR0EkI3" resolve="ok" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="2B9hOR0EkMh" role="2pJxcM">
                  <ref role="2pJxcJ" to="wl5u:1MxN4Cv4CWX" resolve="explanation" />
                  <node concept="WxPPo" id="2B9hOR0EkMi" role="28ntcv">
                    <node concept="37vLTw" id="2B9hOR0Enn3" role="WxPPp">
                      <ref role="3cqZAo" node="2B9hOR0EkIr" resolve="text" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2B9hOR0EkMk" role="37vLTJ">
              <node concept="13iPFW" id="2B9hOR0EkMl" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2B9hOR0EkMm" role="2OqNvi">
                <node concept="3CFYIy" id="2B9hOR0EkMn" role="3CFYIz">
                  <ref role="3CFYIx" to="wl5u:1MxN4Cv4CWz" resolve="ReqCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2B9hOR0EkI3" role="3clF46">
        <property role="TrG5h" value="ok" />
        <node concept="10P_77" id="2B9hOR0EkI2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2B9hOR0EkIr" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="2B9hOR0EkLN" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="1MxN4Cv4ox1" role="13h7CW">
      <node concept="3clFbS" id="1MxN4Cv4ox2" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2B9hOR0EtfZ" role="13h7CS">
      <property role="TrG5h" value="format2" />
      <node concept="3Tm1VV" id="2B9hOR0Etg0" role="1B3o_S" />
      <node concept="17QB3L" id="2B9hOR0EtqB" role="3clF45" />
      <node concept="3clFbS" id="2B9hOR0Etg2" role="3clF47">
        <node concept="3clFbF" id="2B9hOR0EtxI" role="3cqZAp">
          <node concept="2YIFZM" id="2B9hOR0Etym" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <node concept="Xl_RD" id="2B9hOR0EtAU" role="37wK5m">
              <property role="Xl_RC" value="%.2f" />
            </node>
            <node concept="37vLTw" id="2B9hOR0EtU0" role="37wK5m">
              <ref role="3cqZAo" node="2B9hOR0Etu3" resolve="v" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2B9hOR0Etu3" role="3clF46">
        <property role="TrG5h" value="v" />
        <node concept="10OMs4" id="2B9hOR0Etu2" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="2B9hOR0Eu5d" role="13h7CS">
      <property role="TrG5h" value="format3" />
      <node concept="3Tm1VV" id="2B9hOR0Eu5e" role="1B3o_S" />
      <node concept="17QB3L" id="2B9hOR0Eu5f" role="3clF45" />
      <node concept="3clFbS" id="2B9hOR0Eu5g" role="3clF47">
        <node concept="3clFbF" id="2B9hOR0Eu5h" role="3cqZAp">
          <node concept="2YIFZM" id="2B9hOR0Eu5i" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="Xl_RD" id="2B9hOR0Eu5j" role="37wK5m">
              <property role="Xl_RC" value="%.3f" />
            </node>
            <node concept="37vLTw" id="2B9hOR0Eu5k" role="37wK5m">
              <ref role="3cqZAo" node="2B9hOR0Eu5l" resolve="v" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2B9hOR0Eu5l" role="3clF46">
        <property role="TrG5h" value="v" />
        <node concept="10OMs4" id="2B9hOR0Eu5m" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1MxN4Cv4oH3">
    <property role="3GE5qa" value="product.requirement" />
    <ref role="13h7C2" to="wl5u:1MxN4Cv1Dh3" resolve="WeightRequirement" />
    <node concept="13hLZK" id="1MxN4Cv4oH4" role="13h7CW">
      <node concept="3clFbS" id="1MxN4Cv4oH5" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1MxN4Cv4oHx" role="13h7CS">
      <property role="TrG5h" value="check" />
      <ref role="13i0hy" node="1MxN4Cv4oxu" resolve="check" />
      <node concept="3Tm1VV" id="1MxN4Cv4oHy" role="1B3o_S" />
      <node concept="3clFbS" id="1MxN4Cv4oHB" role="3clF47">
        <node concept="3clFbH" id="2B9hOR0G5f0" role="3cqZAp" />
        <node concept="3cpWs8" id="1MxN4Cv5Y2w" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4Cv5Y2x" role="3cpWs9">
            <property role="TrG5h" value="actualMass" />
            <node concept="10OMs4" id="1MxN4Cv5Y2a" role="1tU5fm" />
            <node concept="2OqwBi" id="1MxN4Cv5Y2y" role="33vP2m">
              <node concept="37vLTw" id="1MxN4Cv5Y2z" role="2Oq$k0">
                <ref role="3cqZAo" node="1MxN4Cv4oHC" resolve="world" />
              </node>
              <node concept="liA8E" id="1MxN4Cv5Y2$" role="2OqNvi">
                <ref role="37wK5l" to="i1wt:1MxN4Cv5GlQ" resolve="getMass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1MxN4Cv6dvB" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4Cv6dvE" role="3cpWs9">
            <property role="TrG5h" value="expectedMaxMass" />
            <node concept="10OMs4" id="1MxN4Cv6dv_" role="1tU5fm" />
            <node concept="BsUDl" id="2B9hOR0Ef7D" role="33vP2m">
              <ref role="37wK5l" node="2B9hOR0Eb5O" resolve="evaluateNumber" />
              <node concept="2OqwBi" id="2B9hOR0Ega$" role="37wK5m">
                <node concept="13iPFW" id="2B9hOR0Ef_b" role="2Oq$k0" />
                <node concept="3TrEf2" id="2B9hOR0EgVc" role="2OqNvi">
                  <ref role="3Tt5mk" to="wl5u:1MxN4Cv1DhL" resolve="maxWeight" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2B9hOR0EqUg" role="3cqZAp">
          <node concept="3cpWsn" id="2B9hOR0EqUh" role="3cpWs9">
            <property role="TrG5h" value="overweightMass" />
            <node concept="10OMs4" id="2B9hOR0EoEV" role="1tU5fm" />
            <node concept="3cpWsd" id="2B9hOR0EqUi" role="33vP2m">
              <node concept="37vLTw" id="2B9hOR0EqUj" role="3uHU7w">
                <ref role="3cqZAo" node="1MxN4Cv6dvE" resolve="expectedMaxMass" />
              </node>
              <node concept="37vLTw" id="2B9hOR0EqUk" role="3uHU7B">
                <ref role="3cqZAo" node="1MxN4Cv5Y2x" resolve="actualMass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1MxN4Cv6e9r" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4Cv6e9u" role="3cpWs9">
            <property role="TrG5h" value="ok" />
            <node concept="10P_77" id="1MxN4Cv6e9p" role="1tU5fm" />
            <node concept="2dkUwp" id="2B9hOR0Et4W" role="33vP2m">
              <node concept="3cmrfG" id="2B9hOR0Et5F" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="2B9hOR0EsxQ" role="3uHU7B">
                <ref role="3cqZAo" node="2B9hOR0EqUh" resolve="overweightMass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B9hOR0Ehij" role="3cqZAp" />
        <node concept="3cpWs8" id="1MxN4Cv6hIT" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4Cv6hIU" role="3cpWs9">
            <property role="TrG5h" value="expl" />
            <node concept="17QB3L" id="1MxN4Cv6hI_" role="1tU5fm" />
            <node concept="3cpWs3" id="1MxN4Cv6hIV" role="33vP2m">
              <node concept="Xl_RD" id="1MxN4Cv6hIW" role="3uHU7w">
                <property role="Xl_RC" value=" kg." />
              </node>
              <node concept="3cpWs3" id="1MxN4Cv6hIX" role="3uHU7B">
                <node concept="Xl_RD" id="1MxN4Cv6hIY" role="3uHU7B">
                  <property role="Xl_RC" value="The actual product mass is " />
                </node>
                <node concept="BsUDl" id="2B9hOR0EuMO" role="3uHU7w">
                  <ref role="37wK5l" node="2B9hOR0EtfZ" resolve="format2" />
                  <node concept="37vLTw" id="2B9hOR0EuO7" role="37wK5m">
                    <ref role="3cqZAo" node="1MxN4Cv5Y2x" resolve="actualMass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1MxN4Cv6izc" role="3cqZAp">
          <node concept="3clFbS" id="1MxN4Cv6ize" role="3clFbx">
            <node concept="3clFbF" id="1MxN4Cv6iZc" role="3cqZAp">
              <node concept="d57v9" id="1MxN4Cv6jha" role="3clFbG">
                <node concept="3cpWs3" id="1MxN4Cv6lTr" role="37vLTx">
                  <node concept="Xl_RD" id="1MxN4Cv6lTu" role="3uHU7w">
                    <property role="Xl_RC" value=" kg too heavy." />
                  </node>
                  <node concept="3cpWs3" id="1MxN4Cv6jD8" role="3uHU7B">
                    <node concept="Xl_RD" id="1MxN4Cv6jhB" role="3uHU7B">
                      <property role="Xl_RC" value=" This is " />
                    </node>
                    <node concept="BsUDl" id="2B9hOR0EvpW" role="3uHU7w">
                      <ref role="37wK5l" node="2B9hOR0Eu5d" resolve="format3" />
                      <node concept="37vLTw" id="2B9hOR0EvqC" role="37wK5m">
                        <ref role="3cqZAo" node="2B9hOR0EqUh" resolve="overweightMass" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1MxN4Cv6iZa" role="37vLTJ">
                  <ref role="3cqZAo" node="1MxN4Cv6hIU" resolve="expl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1MxN4Cv6iVx" role="3clFbw">
            <node concept="37vLTw" id="1MxN4Cv6iV_" role="3fr31v">
              <ref role="3cqZAo" node="1MxN4Cv6e9u" resolve="ok" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B9hOR0EoAA" role="3cqZAp" />
        <node concept="3clFbF" id="2B9hOR0Eo1i" role="3cqZAp">
          <node concept="BsUDl" id="2B9hOR0Eo1g" role="3clFbG">
            <ref role="37wK5l" node="2B9hOR0EkzS" resolve="setStatus" />
            <node concept="37vLTw" id="2B9hOR0Eo6Y" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4Cv6e9u" resolve="ok" />
            </node>
            <node concept="37vLTw" id="2B9hOR0Eo7C" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4Cv6hIU" resolve="expl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4Cv4oHC" role="3clF46">
        <property role="TrG5h" value="world" />
        <node concept="3uibUv" id="1MxN4Cv4oHD" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
        </node>
      </node>
      <node concept="3cqZAl" id="1MxN4Cv4oHE" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1MxN4Cv4oIm">
    <property role="3GE5qa" value="product.requirement" />
    <ref role="13h7C2" to="wl5u:1MxN4Cv22Mo" resolve="TrajectoryRequirement" />
    <node concept="13hLZK" id="1MxN4Cv4oIn" role="13h7CW">
      <node concept="3clFbS" id="1MxN4Cv4oIo" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1MxN4Cv4oIO" role="13h7CS">
      <property role="TrG5h" value="check" />
      <ref role="13i0hy" node="1MxN4Cv4oxu" resolve="check" />
      <node concept="3Tm1VV" id="1MxN4Cv4oIP" role="1B3o_S" />
      <node concept="3clFbS" id="1MxN4Cv4oIU" role="3clF47">
        <node concept="3cpWs8" id="2B9hOR0EAPW" role="3cqZAp">
          <node concept="3cpWsn" id="2B9hOR0EAPX" role="3cpWs9">
            <property role="TrG5h" value="actualPoint" />
            <node concept="3Tqbb2" id="2B9hOR0EANH" role="1tU5fm">
              <ref role="ehGHo" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
            </node>
            <node concept="BsUDl" id="2B9hOR0EAPY" role="33vP2m">
              <ref role="37wK5l" node="2B9hOR0E_ds" resolve="getMappedPoint" />
              <node concept="2OqwBi" id="2B9hOR0EAPZ" role="37wK5m">
                <node concept="13iPFW" id="2B9hOR0EAQ0" role="2Oq$k0" />
                <node concept="3TrEf2" id="2B9hOR0EAQ1" role="2OqNvi">
                  <ref role="3Tt5mk" to="wl5u:1MxN4Cv2h58" resolve="point" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="667ewDY4bU$" role="3cqZAp">
          <node concept="3cpWsn" id="667ewDY4bU_" role="3cpWs9">
            <property role="TrG5h" value="actualY" />
            <node concept="10OMs4" id="667ewDY4bJp" role="1tU5fm" />
            <node concept="2OqwBi" id="667ewDY4bUA" role="33vP2m">
              <node concept="2OwXpG" id="667ewDY4bUC" role="2OqNvi">
                <ref role="2Oxat5" to="9s9o:~Vec2.y" resolve="y" />
              </node>
              <node concept="2OqwBi" id="2B9hOR0EIpi" role="2Oq$k0">
                <node concept="37vLTw" id="2B9hOR0EI9L" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MxN4Cv4oIV" resolve="world" />
                </node>
                <node concept="liA8E" id="2B9hOR0EIF6" role="2OqNvi">
                  <ref role="37wK5l" to="i1wt:2B9hOR0EEUU" resolve="getPointPosition" />
                  <node concept="2OqwBi" id="2B9hOR0EJdz" role="37wK5m">
                    <node concept="37vLTw" id="2B9hOR0EII$" role="2Oq$k0">
                      <ref role="3cqZAo" node="2B9hOR0EAPX" resolve="actualPoint" />
                    </node>
                    <node concept="3TrcHB" id="2B9hOR0EJuG" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="667ewDY46oX" role="3cqZAp">
          <node concept="3cpWsn" id="667ewDY46oY" role="3cpWs9">
            <property role="TrG5h" value="expY" />
            <node concept="10OMs4" id="667ewDY46oZ" role="1tU5fm" />
            <node concept="BsUDl" id="2B9hOR0Eitp" role="33vP2m">
              <ref role="37wK5l" node="2B9hOR0Eb5O" resolve="evaluateNumber" />
              <node concept="2OqwBi" id="2B9hOR0EiOi" role="37wK5m">
                <node concept="13iPFW" id="2B9hOR0EiuZ" role="2Oq$k0" />
                <node concept="3TrEf2" id="2B9hOR0Ej5s" role="2OqNvi">
                  <ref role="3Tt5mk" to="wl5u:1MxN4Cv22MK" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="667ewDY47lR" role="3cqZAp">
          <node concept="3cpWsn" id="667ewDY47lU" role="3cpWs9">
            <property role="TrG5h" value="dy" />
            <node concept="10OMs4" id="667ewDY47lP" role="1tU5fm" />
            <node concept="FJ1c_" id="667ewDY4Llr" role="33vP2m">
              <node concept="2$xPTn" id="667ewDY4LWk" role="3uHU7w">
                <property role="2$xPTl" value="1000.0f" />
              </node>
              <node concept="BsUDl" id="2B9hOR0Ejk2" role="3uHU7B">
                <ref role="37wK5l" node="2B9hOR0Eb5O" resolve="evaluateNumber" />
                <node concept="2OqwBi" id="2B9hOR0EjOt" role="37wK5m">
                  <node concept="13iPFW" id="2B9hOR0Ejv4" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2B9hOR0EkjT" role="2OqNvi">
                    <ref role="3Tt5mk" to="wl5u:1MxN4Cv22MI" resolve="deviation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="667ewDY48jy" role="3cqZAp">
          <node concept="3cpWsn" id="667ewDY48j_" role="3cpWs9">
            <property role="TrG5h" value="yMin" />
            <node concept="10OMs4" id="667ewDY48jw" role="1tU5fm" />
            <node concept="3cpWsd" id="667ewDY48Q0" role="33vP2m">
              <node concept="37vLTw" id="667ewDY48Q7" role="3uHU7w">
                <ref role="3cqZAo" node="667ewDY47lU" resolve="dy" />
              </node>
              <node concept="37vLTw" id="667ewDY48p1" role="3uHU7B">
                <ref role="3cqZAo" node="667ewDY46oY" resolve="expY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="667ewDY499k" role="3cqZAp">
          <node concept="3cpWsn" id="667ewDY499n" role="3cpWs9">
            <property role="TrG5h" value="yMax" />
            <node concept="10OMs4" id="667ewDY499i" role="1tU5fm" />
            <node concept="3cpWs3" id="667ewDY49L6" role="33vP2m">
              <node concept="37vLTw" id="667ewDY49Lt" role="3uHU7w">
                <ref role="3cqZAo" node="667ewDY47lU" resolve="dy" />
              </node>
              <node concept="37vLTw" id="667ewDY49eq" role="3uHU7B">
                <ref role="3cqZAo" node="667ewDY46oY" resolve="expY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="667ewDY45Pt" role="3cqZAp">
          <node concept="3cpWsn" id="667ewDY45Pw" role="3cpWs9">
            <property role="TrG5h" value="ok" />
            <node concept="10P_77" id="667ewDY45Pr" role="1tU5fm" />
            <node concept="1Wc70l" id="667ewDY4dzn" role="33vP2m">
              <node concept="2d3UOw" id="667ewDY4YKb" role="3uHU7w">
                <node concept="37vLTw" id="667ewDY4d$8" role="3uHU7B">
                  <ref role="3cqZAo" node="667ewDY4bU_" resolve="actualY" />
                </node>
                <node concept="37vLTw" id="667ewDY4dL1" role="3uHU7w">
                  <ref role="3cqZAo" node="667ewDY48j_" resolve="yMin" />
                </node>
              </node>
              <node concept="2dkUwp" id="667ewDY4YEb" role="3uHU7B">
                <node concept="37vLTw" id="667ewDY4ctu" role="3uHU7B">
                  <ref role="3cqZAo" node="667ewDY4bU_" resolve="actualY" />
                </node>
                <node concept="37vLTw" id="667ewDY4d6e" role="3uHU7w">
                  <ref role="3cqZAo" node="667ewDY499n" resolve="yMax" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B9hOR0Ew1f" role="3cqZAp" />
        <node concept="3cpWs8" id="667ewDY3LWW" role="3cqZAp">
          <node concept="3cpWsn" id="667ewDY3LWZ" role="3cpWs9">
            <property role="TrG5h" value="txt" />
            <node concept="17QB3L" id="667ewDY3LWU" role="1tU5fm" />
            <node concept="3cpWs3" id="667ewDY4ihj" role="33vP2m">
              <node concept="Xl_RD" id="667ewDY4ihm" role="3uHU7w">
                <property role="Xl_RC" value=" m. " />
              </node>
              <node concept="3cpWs3" id="667ewDY4gXk" role="3uHU7B">
                <node concept="3cpWs3" id="667ewDY4$gd" role="3uHU7B">
                  <node concept="Xl_RD" id="667ewDY4$gg" role="3uHU7w">
                    <property role="Xl_RC" value="') is " />
                  </node>
                  <node concept="3cpWs3" id="667ewDY4zI4" role="3uHU7B">
                    <node concept="3cpWs3" id="667ewDY4yWj" role="3uHU7B">
                      <node concept="3cpWs3" id="667ewDY4gqt" role="3uHU7B">
                        <node concept="3cpWs3" id="667ewDY4f_F" role="3uHU7B">
                          <node concept="Xl_RD" id="667ewDY4eWO" role="3uHU7B">
                            <property role="Xl_RC" value="The starting y-position of '" />
                          </node>
                          <node concept="2OqwBi" id="667ewDY4xJx" role="3uHU7w">
                            <node concept="2OqwBi" id="667ewDY4wXt" role="2Oq$k0">
                              <node concept="13iPFW" id="667ewDY4wFh" role="2Oq$k0" />
                              <node concept="3TrEf2" id="667ewDY4xlN" role="2OqNvi">
                                <ref role="3Tt5mk" to="wl5u:1MxN4Cv2h58" resolve="point" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="667ewDY4yft" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="667ewDY4gqw" role="3uHU7w">
                          <property role="Xl_RC" value="' " />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="667ewDY4yWm" role="3uHU7w">
                        <property role="Xl_RC" value="(mapped to '" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="667ewDY4zIw" role="3uHU7w">
                      <ref role="3cqZAo" node="2B9hOR0EAPX" resolve="actualPoint" />
                    </node>
                  </node>
                </node>
                <node concept="BsUDl" id="2B9hOR0EvSY" role="3uHU7w">
                  <ref role="37wK5l" node="2B9hOR0Eu5d" resolve="format3" />
                  <node concept="37vLTw" id="2B9hOR0EvZ8" role="37wK5m">
                    <ref role="3cqZAo" node="667ewDY4bU_" resolve="actualY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="667ewDY3Luc" role="3cqZAp">
          <node concept="3clFbS" id="667ewDY3Lue" role="3clFbx">
            <node concept="3clFbF" id="667ewDY4eEM" role="3cqZAp">
              <node concept="d57v9" id="667ewDY4j63" role="3clFbG">
                <node concept="Xl_RD" id="667ewDY4j6m" role="37vLTx">
                  <property role="Xl_RC" value="This satisfies the specification." />
                </node>
                <node concept="37vLTw" id="667ewDY4eEK" role="37vLTJ">
                  <ref role="3cqZAo" node="667ewDY3LWZ" resolve="txt" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="667ewDY4e_9" role="3clFbw">
            <ref role="3cqZAo" node="667ewDY45Pw" resolve="ok" />
          </node>
          <node concept="9aQIb" id="667ewDY4jq_" role="9aQIa">
            <node concept="3clFbS" id="667ewDY4jqA" role="9aQI4">
              <node concept="3clFbF" id="667ewDY4jLE" role="3cqZAp">
                <node concept="d57v9" id="667ewDY4jLF" role="3clFbG">
                  <node concept="Xl_RD" id="667ewDY4jLG" role="37vLTx">
                    <property role="Xl_RC" value="This is outside the specification." />
                  </node>
                  <node concept="37vLTw" id="667ewDY4jLH" role="37vLTJ">
                    <ref role="3cqZAo" node="667ewDY3LWZ" resolve="txt" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B9hOR0EqG8" role="3cqZAp" />
        <node concept="3clFbF" id="2B9hOR0EpsD" role="3cqZAp">
          <node concept="BsUDl" id="2B9hOR0EpsB" role="3clFbG">
            <ref role="37wK5l" node="2B9hOR0EkzS" resolve="setStatus" />
            <node concept="37vLTw" id="2B9hOR0Eq18" role="37wK5m">
              <ref role="3cqZAo" node="667ewDY45Pw" resolve="ok" />
            </node>
            <node concept="37vLTw" id="2B9hOR0Eq2S" role="37wK5m">
              <ref role="3cqZAo" node="667ewDY3LWZ" resolve="txt" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1MxN4Cv4oIV" role="3clF46">
        <property role="TrG5h" value="world" />
        <node concept="3uibUv" id="1MxN4Cv4oIW" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
        </node>
      </node>
      <node concept="3cqZAl" id="1MxN4Cv4oIX" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2B9hOR0E_ds" role="13h7CS">
      <property role="TrG5h" value="getMappedPoint" />
      <node concept="3Tm1VV" id="2B9hOR0E_dt" role="1B3o_S" />
      <node concept="3Tqbb2" id="2B9hOR0E__T" role="3clF45">
        <ref role="ehGHo" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
      </node>
      <node concept="3clFbS" id="2B9hOR0E_dv" role="3clF47">
        <node concept="3clFbF" id="2B9hOR0E_Ik" role="3cqZAp">
          <node concept="2OqwBi" id="2B9hOR0EyE8" role="3clFbG">
            <node concept="2OqwBi" id="2B9hOR0EyE9" role="2Oq$k0">
              <node concept="BsUDl" id="2B9hOR0EyEa" role="2Oq$k0">
                <ref role="37wK5l" node="2B9hOR0Ewrq" resolve="product" />
              </node>
              <node concept="3TrEf2" id="2B9hOR0EyEb" role="2OqNvi">
                <ref role="3Tt5mk" to="wl5u:4Lx5PHoWzW" resolve="solution" />
              </node>
            </node>
            <node concept="2qgKlT" id="2B9hOR0EyEc" role="2OqNvi">
              <ref role="37wK5l" node="667ewDY3BpY" resolve="getMappedPoint" />
              <node concept="37vLTw" id="2B9hOR0EyX4" role="37wK5m">
                <ref role="3cqZAo" node="2B9hOR0E_DH" resolve="point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2B9hOR0E_DH" role="3clF46">
        <property role="TrG5h" value="point" />
        <node concept="3Tqbb2" id="2B9hOR0E_DG" role="1tU5fm">
          <ref role="ehGHo" to="wl5u:667ewDXZ7tS" resolve="RequiredPoint" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1MxN4Cv4GLj">
    <property role="3GE5qa" value="product.requirement" />
    <ref role="13h7C2" to="wl5u:1MxN4Cv4CWz" resolve="ReqCheck" />
    <node concept="13hLZK" id="1MxN4Cv4GLk" role="13h7CW">
      <node concept="3clFbS" id="1MxN4Cv4GLl" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="1MxN4Cv61d7">
    <property role="TrG5h" value="ExprEvaluator" />
    <node concept="3Tm1VV" id="1MxN4Cv61d8" role="1B3o_S" />
    <node concept="2tJIrI" id="6KOiXOpuE8h" role="jymVt" />
    <node concept="2YIFZL" id="1MxN4Cv6bKZ" role="jymVt">
      <property role="TrG5h" value="evaluateNumber" />
      <node concept="3clFbS" id="1MxN4Cv6bL2" role="3clF47">
        <node concept="3cpWs8" id="1MxN4Cv6cBG" role="3cqZAp">
          <node concept="3cpWsn" id="1MxN4Cv6cBH" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <node concept="3uibUv" id="1MxN4Cv6cBI" role="1tU5fm">
              <ref role="3uigEE" to="2ahs:2X4$XGmetjM" resolve="ContextImpl" />
            </node>
            <node concept="2ShNRf" id="1MxN4Cv6cBJ" role="33vP2m">
              <node concept="1pGfFk" id="1MxN4Cv6cBK" role="2ShVmc">
                <ref role="37wK5l" to="2ahs:2X4$XGmeuS6" resolve="ContextImpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1MxN4Cv6cJl" role="3cqZAp">
          <node concept="1rXfSq" id="1MxN4Cv6cJj" role="3clFbG">
            <ref role="37wK5l" node="3yqPF1bN_nB" resolve="evaluateNumber" />
            <node concept="37vLTw" id="1MxN4Cv6cRc" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4Cv6c40" resolve="expr" />
            </node>
            <node concept="37vLTw" id="1MxN4Cv6cRS" role="37wK5m">
              <ref role="3cqZAo" node="1MxN4Cv6cBH" resolve="context" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1MxN4Cv65eu" role="1B3o_S" />
      <node concept="10OMs4" id="1MxN4Cv6bKi" role="3clF45" />
      <node concept="37vLTG" id="1MxN4Cv6c40" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="1MxN4Cv6c3Z" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1MxN4Cv6cYa" role="jymVt" />
    <node concept="2YIFZL" id="3yqPF1bN_nB" role="jymVt">
      <property role="TrG5h" value="evaluateNumber" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3yqPF1bN$xL" role="3clF47">
        <node concept="3cpWs8" id="3PEUHLX68d7" role="3cqZAp">
          <node concept="3cpWsn" id="3PEUHLX68d8" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3PEUHLX68d3" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2YIFZM" id="1MxN4Cv63Es" role="33vP2m">
              <ref role="37wK5l" node="3PEUHLX64yp" resolve="eval" />
              <ref role="1Pybhc" node="1MxN4Cv61d7" resolve="ExprEvaluator" />
              <node concept="37vLTw" id="1MxN4Cv63Et" role="37wK5m">
                <ref role="3cqZAo" node="3yqPF1bN$Rp" resolve="expr" />
              </node>
              <node concept="37vLTw" id="1MxN4Cv63Eu" role="37wK5m">
                <ref role="3cqZAo" node="3yqPF1bP2XA" resolve="context" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3PEUHLX6ffU" role="3cqZAp" />
        <node concept="3SKdUt" id="4Vaf4$nyK$X" role="3cqZAp">
          <node concept="1PaTwC" id="59FNqAPCIvl" role="1aUNEU">
            <node concept="3oM_SD" id="59FNqAPCIvm" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="59FNqAPCIvn" role="1PaTwD">
              <property role="3oM_SC" value="result" />
            </node>
            <node concept="3oM_SD" id="59FNqAPCIvo" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="59FNqAPCIvp" role="1PaTwD">
              <property role="3oM_SC" value="evaluation" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3yqPF1bN_cn" role="3cqZAp">
          <node concept="3clFbS" id="3yqPF1bN_co" role="3clFbx">
            <node concept="3clFbJ" id="3PEUHLX1_Qw" role="3cqZAp">
              <node concept="3clFbS" id="3PEUHLX1_Qy" role="3clFbx">
                <node concept="3cpWs8" id="6KOiXOpuIVo" role="3cqZAp">
                  <node concept="3cpWsn" id="6KOiXOpuIVp" role="3cpWs9">
                    <property role="TrG5h" value="bd" />
                    <node concept="3uibUv" id="6KOiXOpwiqF" role="1tU5fm">
                      <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
                    </node>
                    <node concept="0kSF2" id="6KOiXOpuIVq" role="33vP2m">
                      <node concept="3uibUv" id="6KOiXOpwhCQ" role="0kSFW">
                        <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
                      </node>
                      <node concept="37vLTw" id="6KOiXOpuIVs" role="0kSFX">
                        <ref role="3cqZAo" node="3PEUHLX68d8" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3PEUHLX1BR1" role="3cqZAp">
                  <node concept="2OqwBi" id="6KOiXOpvJBH" role="3cqZAk">
                    <node concept="37vLTw" id="6KOiXOpvIY2" role="2Oq$k0">
                      <ref role="3cqZAo" node="6KOiXOpuIVp" resolve="bd" />
                    </node>
                    <node concept="liA8E" id="6KOiXOpvKDw" role="2OqNvi">
                      <ref role="37wK5l" to="xlxw:~BigDecimal.floatValue()" resolve="floatValue" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="3PEUHLX1BxG" role="3clFbw">
                <node concept="3uibUv" id="6KOiXOpwgIj" role="2ZW6by">
                  <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
                </node>
                <node concept="37vLTw" id="3PEUHLX1AoR" role="2ZW6bz">
                  <ref role="3cqZAo" node="3PEUHLX68d8" resolve="result" />
                </node>
              </node>
              <node concept="3eNFk2" id="6h7RWbADKeN" role="3eNLev">
                <node concept="3clFbS" id="6h7RWbADKeO" role="3eOfB_">
                  <node concept="3cpWs8" id="6h7RWbADM7x" role="3cqZAp">
                    <node concept="3cpWsn" id="6h7RWbADM7y" role="3cpWs9">
                      <property role="TrG5h" value="bi" />
                      <node concept="3uibUv" id="6h7RWbADM7z" role="1tU5fm">
                        <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                      </node>
                      <node concept="0kSF2" id="6h7RWbADMf1" role="33vP2m">
                        <node concept="3uibUv" id="6h7RWbADMf4" role="0kSFW">
                          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                        </node>
                        <node concept="37vLTw" id="6h7RWbADMaA" role="0kSFX">
                          <ref role="3cqZAo" node="3PEUHLX68d8" resolve="result" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6h7RWbADMna" role="3cqZAp">
                    <node concept="2OqwBi" id="6h7RWbADNhF" role="3cqZAk">
                      <node concept="37vLTw" id="6h7RWbADMnS" role="2Oq$k0">
                        <ref role="3cqZAo" node="6h7RWbADM7y" resolve="bi" />
                      </node>
                      <node concept="liA8E" id="6h7RWbADOLb" role="2OqNvi">
                        <ref role="37wK5l" to="xlxw:~BigInteger.floatValue()" resolve="floatValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="6h7RWbADLSE" role="3eO9$A">
                  <node concept="3uibUv" id="6h7RWbADM0d" role="2ZW6by">
                    <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                  </node>
                  <node concept="37vLTw" id="6h7RWbADLNL" role="2ZW6bz">
                    <ref role="3cqZAo" node="3PEUHLX68d8" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="6h7RWbADKEg" role="9aQIa">
                <node concept="3clFbS" id="6h7RWbADKEh" role="9aQI4">
                  <node concept="RRSsy" id="6h7RWbADKeP" role="3cqZAp">
                    <property role="RRSoG" value="error" />
                    <node concept="Xl_RD" id="6h7RWbADKeQ" role="RRSoy">
                      <property role="Xl_RC" value="Invalid return type of arithmetic expression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3yqPF1bN_cG" role="3clFbw">
            <node concept="37vLTw" id="3yqPF1bN_cH" role="3uHU7B">
              <ref role="3cqZAo" node="3PEUHLX68d8" resolve="result" />
            </node>
            <node concept="10Nm6u" id="3yqPF1bN_cI" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="3PEUHLX69lx" role="3cqZAp" />
        <node concept="3SKdUt" id="3PEUHLX6hSg" role="3cqZAp">
          <node concept="1PaTwC" id="59FNqAPCIvS" role="1aUNEU">
            <node concept="3oM_SD" id="59FNqAPCIvT" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="59FNqAPCIvU" role="1PaTwD">
              <property role="3oM_SC" value="catch-all" />
            </node>
            <node concept="3oM_SD" id="59FNqAPCIvV" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="6KOiXOpvNpG" role="3cqZAp">
          <node concept="2ShNRf" id="6KOiXOpvO7S" role="YScLw">
            <node concept="1pGfFk" id="6KOiXOpvOpB" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
              <node concept="Xl_RD" id="6KOiXOpvOrc" role="37wK5m">
                <property role="Xl_RC" value="Invalid float number!" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3yqPF1bN$Rp" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="3yqPF1bN$Ro" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="3yqPF1bP2XA" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="6KOiXOpuBdW" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1MxN4Cv65G1" role="1B3o_S" />
      <node concept="10OMs4" id="6KOiXOpuARz" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1MxN4Cv68Jy" role="jymVt" />
    <node concept="2YIFZL" id="3PEUHLX64yp" role="jymVt">
      <property role="TrG5h" value="eval" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3PEUHLX61IL" role="3clF47">
        <node concept="3clFbJ" id="3PEUHLX61Zq" role="3cqZAp">
          <node concept="3clFbS" id="3PEUHLX61Zr" role="3clFbx">
            <node concept="3cpWs6" id="3PEUHLX61Zs" role="3cqZAp">
              <node concept="10Nm6u" id="3PEUHLX61Zt" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3PEUHLX61Zu" role="3clFbw">
            <node concept="10Nm6u" id="3PEUHLX61Zv" role="3uHU7w" />
            <node concept="37vLTw" id="3PEUHLX61Zw" role="3uHU7B">
              <ref role="3cqZAo" node="3PEUHLX61Ur" resolve="context" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3PEUHLX61Zx" role="3cqZAp" />
        <node concept="3cpWs8" id="3PEUHLX61Zy" role="3cqZAp">
          <node concept="3cpWsn" id="3PEUHLX61Zz" role="3cpWs9">
            <property role="TrG5h" value="interpreter" />
            <node concept="3uibUv" id="3PEUHLX61Z$" role="1tU5fm">
              <ref role="3uigEE" to="2ahs:4X7QcQ36WR7" resolve="IInterpreter" />
            </node>
            <node concept="2YIFZM" id="3PEUHLX61Z_" role="33vP2m">
              <ref role="1Pybhc" to="2ahs:50LzNoSxDO3" resolve="InterpreterEvaluationHelper" />
              <ref role="37wK5l" to="2ahs:50LzNoSyEfI" resolve="getInterpreter" />
              <node concept="Xl_RD" id="3PEUHLX61ZA" role="37wK5m">
                <property role="Xl_RC" value="arithmetic" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3PEUHLX61ZB" role="3cqZAp">
          <node concept="2OqwBi" id="3PEUHLX61ZC" role="3clFbG">
            <node concept="37vLTw" id="3PEUHLX61ZD" role="2Oq$k0">
              <ref role="3cqZAo" node="3PEUHLX61Ur" resolve="context" />
            </node>
            <node concept="liA8E" id="3PEUHLX61ZE" role="2OqNvi">
              <ref role="37wK5l" to="2ahs:2ALJBcrt6T5" resolve="setRootInterpreter" />
              <node concept="37vLTw" id="3PEUHLX61ZF" role="37wK5m">
                <ref role="3cqZAo" node="3PEUHLX61Zz" resolve="interpreter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="3PEUHLX61ZG" role="3cqZAp">
          <node concept="3uVAMA" id="3PEUHLX621w" role="1zxBo5">
            <node concept="XOnhg" id="3PEUHLX621x" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="bPLlDrjPKq5" role="1tU5fm">
                <node concept="3uibUv" id="3PEUHLX621y" role="nSUat">
                  <ref role="3uigEE" to="2ahs:9nJ_zCAzxL" resolve="InterpreterBaseException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3PEUHLX621z" role="1zc67A">
              <node concept="RRSsy" id="3PEUHLX621$" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="3PEUHLX621_" role="RRSoy">
                  <property role="Xl_RC" value="Interpreter exception while evaluating feature expression" />
                </node>
                <node concept="37vLTw" id="3PEUHLX621A" role="RRSow">
                  <ref role="3cqZAo" node="3PEUHLX621x" resolve="e" />
                </node>
              </node>
              <node concept="3cpWs6" id="3PEUHLX621B" role="3cqZAp">
                <node concept="10Nm6u" id="3PEUHLX621C" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="3WZb9Mmj2Kk" role="1zxBo6">
            <node concept="3clFbS" id="3PEUHLX621D" role="1wplMD">
              <node concept="3SKdUt" id="3PEUHLX621E" role="3cqZAp">
                <node concept="1PaTwC" id="59FNqAPCIwj" role="1aUNEU">
                  <node concept="3oM_SD" id="59FNqAPCIwk" role="1PaTwD">
                    <property role="3oM_SC" value="remove" />
                  </node>
                  <node concept="3oM_SD" id="59FNqAPCIwl" role="1PaTwD">
                    <property role="3oM_SC" value="changed" />
                  </node>
                  <node concept="3oM_SD" id="59FNqAPCIwm" role="1PaTwD">
                    <property role="3oM_SC" value="top" />
                  </node>
                  <node concept="3oM_SD" id="59FNqAPCIwn" role="1PaTwD">
                    <property role="3oM_SC" value="environment" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3PEUHLX621G" role="3cqZAp">
                <node concept="2OqwBi" id="3PEUHLX621H" role="3clFbG">
                  <node concept="37vLTw" id="3PEUHLX621I" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PEUHLX61Ur" resolve="context" />
                  </node>
                  <node concept="liA8E" id="3PEUHLX621J" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2pAf7L4EmGp" resolve="popEnvironment" />
                    <node concept="37vLTw" id="3PEUHLX621K" role="37wK5m">
                      <ref role="3cqZAo" node="3PEUHLX61Rz" resolve="expr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3PEUHLX61ZH" role="1zxBo7">
            <node concept="abc8K" id="3PEUHLX61ZI" role="3cqZAp">
              <node concept="Xl_RD" id="3PEUHLX61ZJ" role="abp_N">
                <property role="Xl_RC" value="EVALUATING " />
              </node>
              <node concept="37vLTw" id="3PEUHLX61ZK" role="abp_N">
                <ref role="3cqZAo" node="3PEUHLX61Rz" resolve="expr" />
              </node>
              <node concept="Xl_RD" id="3PEUHLX61ZL" role="abp_N">
                <property role="Xl_RC" value=" WITH ENV " />
              </node>
              <node concept="2OqwBi" id="3PEUHLX61ZM" role="abp_N">
                <node concept="37vLTw" id="3PEUHLX61ZN" role="2Oq$k0">
                  <ref role="3cqZAo" node="3PEUHLX61Ur" resolve="context" />
                </node>
                <node concept="liA8E" id="3PEUHLX61ZO" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:2X4$XGmeh8R" resolve="getEnvironment" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3PEUHLX61ZP" role="3cqZAp">
              <node concept="1PaTwC" id="59FNqAPCIvW" role="1aUNEU">
                <node concept="3oM_SD" id="59FNqAPCIvX" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIvY" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIvZ" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIw0" role="1PaTwD">
                  <property role="3oM_SC" value="push" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIw1" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIw2" role="1PaTwD">
                  <property role="3oM_SC" value="new" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIw3" role="1PaTwD">
                  <property role="3oM_SC" value="environment" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIw4" role="1PaTwD">
                  <property role="3oM_SC" value="because" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIw5" role="1PaTwD">
                  <property role="3oM_SC" value="interpreting" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIw6" role="1PaTwD">
                  <property role="3oM_SC" value="DotExpressions" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3PEUHLX61ZR" role="3cqZAp">
              <node concept="1PaTwC" id="59FNqAPCIw7" role="1aUNEU">
                <node concept="3oM_SD" id="59FNqAPCIw8" role="1PaTwD">
                  <property role="3oM_SC" value="will" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIw9" role="1PaTwD">
                  <property role="3oM_SC" value="add" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIwa" role="1PaTwD">
                  <property role="3oM_SC" value="entries" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIwb" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIwc" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIwd" role="1PaTwD">
                  <property role="3oM_SC" value="original" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIwe" role="1PaTwD">
                  <property role="3oM_SC" value="environment" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3PEUHLX61ZT" role="3cqZAp">
              <node concept="3cpWsn" id="3PEUHLX61ZU" role="3cpWs9">
                <property role="TrG5h" value="newEnv" />
                <node concept="3rvAFt" id="3PEUHLX61ZV" role="1tU5fm">
                  <node concept="3Tqbb2" id="3PEUHLX61ZW" role="3rvQeY" />
                  <node concept="3uibUv" id="3PEUHLX61ZX" role="3rvSg0">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2ShNRf" id="3PEUHLX61ZY" role="33vP2m">
                  <node concept="3rGOSV" id="3PEUHLX61ZZ" role="2ShVmc">
                    <node concept="3Tqbb2" id="3PEUHLX6200" role="3rHrn6" />
                    <node concept="3uibUv" id="3PEUHLX6201" role="3rHtpV">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3PEUHLX6202" role="3cqZAp">
              <node concept="2OqwBi" id="3PEUHLX6203" role="3clFbG">
                <node concept="37vLTw" id="3PEUHLX6204" role="2Oq$k0">
                  <ref role="3cqZAo" node="3PEUHLX61Ur" resolve="context" />
                </node>
                <node concept="liA8E" id="3PEUHLX6205" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:2pAf7L4El8y" resolve="pushEnvironment" />
                  <node concept="37vLTw" id="3PEUHLX6206" role="37wK5m">
                    <ref role="3cqZAo" node="3PEUHLX61Rz" resolve="expr" />
                  </node>
                  <node concept="37vLTw" id="3PEUHLX6207" role="37wK5m">
                    <ref role="3cqZAo" node="3PEUHLX61ZU" resolve="newEnv" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3PEUHLX6208" role="3cqZAp" />
            <node concept="3SKdUt" id="3PEUHLX6209" role="3cqZAp">
              <node concept="1PaTwC" id="59FNqAPCIwf" role="1aUNEU">
                <node concept="3oM_SD" id="59FNqAPCIwg" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIwh" role="1PaTwD">
                  <property role="3oM_SC" value="actual" />
                </node>
                <node concept="3oM_SD" id="59FNqAPCIwi" role="1PaTwD">
                  <property role="3oM_SC" value="evaluation" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3PEUHLX620b" role="3cqZAp">
              <node concept="3cpWsn" id="3PEUHLX620c" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="3uibUv" id="3PEUHLX620d" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="2OqwBi" id="3PEUHLX620e" role="33vP2m">
                  <node concept="37vLTw" id="3PEUHLX620f" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PEUHLX61Zz" resolve="interpreter" />
                  </node>
                  <node concept="liA8E" id="3PEUHLX620g" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2X4$XGmegKw" resolve="evaluate" />
                    <node concept="37vLTw" id="3PEUHLX620h" role="37wK5m">
                      <ref role="3cqZAo" node="3PEUHLX61Rz" resolve="expr" />
                    </node>
                    <node concept="37vLTw" id="3PEUHLX620i" role="37wK5m">
                      <ref role="3cqZAo" node="3PEUHLX61Ur" resolve="context" />
                    </node>
                    <node concept="2ShNRf" id="3PEUHLX620j" role="37wK5m">
                      <node concept="HV5vD" id="3PEUHLX620k" role="2ShVmc">
                        <ref role="HV5vE" to="2ahs:4_qY3E6qZJh" resolve="NullCoverageAnalyzer" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="3PEUHLX620l" role="37wK5m" />
                    <node concept="3clFbT" id="3PEUHLX620m" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="abc8K" id="3PEUHLX620n" role="3cqZAp">
              <node concept="Xl_RD" id="3PEUHLX620o" role="abp_N">
                <property role="Xl_RC" value="    EVAL RESULT " />
              </node>
              <node concept="37vLTw" id="3PEUHLX620p" role="abp_N">
                <ref role="3cqZAo" node="3PEUHLX61Rz" resolve="expr" />
              </node>
              <node concept="Xl_RD" id="3PEUHLX620q" role="abp_N">
                <property role="Xl_RC" value=" TO " />
              </node>
              <node concept="37vLTw" id="3PEUHLX620r" role="abp_N">
                <ref role="3cqZAo" node="3PEUHLX620c" resolve="result" />
              </node>
              <node concept="Xl_RD" id="3PEUHLX620s" role="abp_N">
                <property role="Xl_RC" value=" WITH ENV " />
              </node>
              <node concept="2OqwBi" id="3PEUHLX620t" role="abp_N">
                <node concept="2OqwBi" id="3PEUHLX620u" role="2Oq$k0">
                  <node concept="37vLTw" id="3PEUHLX620v" role="2Oq$k0">
                    <ref role="3cqZAo" node="3PEUHLX61Ur" resolve="context" />
                  </node>
                  <node concept="liA8E" id="3PEUHLX620w" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2X4$XGmeh8R" resolve="getEnvironment" />
                  </node>
                </node>
                <node concept="liA8E" id="3PEUHLX620x" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:7F2vPZ3KZ7$" resolve="getParentEnvironment" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3PEUHLX66$y" role="3cqZAp">
              <node concept="37vLTw" id="3PEUHLX66$$" role="3cqZAk">
                <ref role="3cqZAo" node="3PEUHLX620c" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3PEUHLX61Rz" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="3PEUHLX61Ry" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3PEUHLX61Ur" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="3PEUHLX61YD" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="3uibUv" id="3PEUHLX61HT" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="P$JXv" id="3PEUHLX63h2" role="lGtFl">
        <node concept="TZ5HA" id="3PEUHLX63h3" role="TZ5H$">
          <node concept="1dT_AC" id="3PEUHLX63h4" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="2U$1Ah" id="3PEUHLX63AB" role="1dT_Ay">
            <property role="2U$1Ai" value="p" />
            <node concept="TZ5HA" id="3PEUHLX63AC" role="2U$1Aj">
              <node concept="1dT_AC" id="3PEUHLX63AA" role="1dT_Ay">
                <property role="1dT_AB" value="Helper function which uses the interpreter to evaluate an expression." />
              </node>
            </node>
          </node>
        </node>
        <node concept="TUZQ0" id="3PEUHLX63h5" role="3nqlJM">
          <property role="TUZQ4" value="the expression to be evaluated" />
          <node concept="zr_55" id="3PEUHLX63h7" role="zr_5Q">
            <ref role="zr_51" node="3PEUHLX61Rz" resolve="expr" />
          </node>
        </node>
        <node concept="TUZQ0" id="3PEUHLX63h8" role="3nqlJM">
          <property role="TUZQ4" value="a context for the interpreter" />
          <node concept="zr_55" id="3PEUHLX63ha" role="zr_5Q">
            <ref role="zr_51" node="3PEUHLX61Ur" resolve="context" />
          </node>
        </node>
        <node concept="x79VA" id="3PEUHLX63hb" role="3nqlJM">
          <property role="x79VB" value="the result of the evaluation (or null on error)" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1MxN4Cv62SX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1MxN4Cv61h4" role="jymVt" />
  </node>
  <node concept="13h7C7" id="667ewDXVYap">
    <property role="3GE5qa" value="solution" />
    <ref role="13h7C2" to="wl5u:1MxN4Cv9BXK" resolve="Solution" />
    <node concept="13hLZK" id="667ewDXVYaq" role="13h7CW">
      <node concept="3clFbS" id="667ewDXVYar" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="667ewDXVYaR" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="667ewDXVYaS" role="1B3o_S" />
      <node concept="3clFbS" id="667ewDXVYb1" role="3clF47">
        <node concept="3clFbJ" id="667ewDXVZlV" role="3cqZAp">
          <node concept="3clFbS" id="667ewDXVZlX" role="3clFbx">
            <node concept="3cpWs6" id="667ewDXW09o" role="3cqZAp">
              <node concept="2YIFZM" id="667ewDXW21w" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="667ewDXW3dL" role="37wK5m">
                  <node concept="2OqwBi" id="667ewDXW2hn" role="2Oq$k0">
                    <node concept="13iPFW" id="667ewDXW23V" role="2Oq$k0" />
                    <node concept="3TrEf2" id="667ewDXW2Cu" role="2OqNvi">
                      <ref role="3Tt5mk" to="wl5u:1MxN4Cv9CQ_" resolve="mechanism" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="667ewDXW3zc" role="2OqNvi">
                    <ref role="3TtcxE" to="wl5u:4Lx5PHoT1P" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="667ewDXVZCX" role="3clFbw">
            <node concept="37vLTw" id="667ewDXVZqi" role="2Oq$k0">
              <ref role="3cqZAo" node="667ewDXVYb2" resolve="kind" />
            </node>
            <node concept="2Zo12i" id="667ewDXVZYP" role="2OqNvi">
              <node concept="chp4Y" id="667ewDXW02R" role="2Zo12j">
                <ref role="cht4Q" to="wl5u:4Lx5PHoT0U" resolve="Parameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="667ewDXVYbc" role="3cqZAp">
          <node concept="iy90A" id="667ewDXXEdx" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="667ewDXVYb2" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="667ewDXVYb3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="667ewDXVYb4" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="667ewDXVYb5" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="667ewDXVYb6" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="667ewDY3BpY" role="13h7CS">
      <property role="TrG5h" value="getMappedPoint" />
      <node concept="3Tm1VV" id="667ewDY3BpZ" role="1B3o_S" />
      <node concept="3Tqbb2" id="667ewDY3BuX" role="3clF45">
        <ref role="ehGHo" to="wl5u:4Lx5PHnXeQ" resolve="IPointDef" />
      </node>
      <node concept="3clFbS" id="667ewDY3Bq1" role="3clF47">
        <node concept="3clFbF" id="667ewDY3BAg" role="3cqZAp">
          <node concept="2OqwBi" id="667ewDY3HT$" role="3clFbG">
            <node concept="2OqwBi" id="667ewDY3E4E" role="2Oq$k0">
              <node concept="2OqwBi" id="667ewDY3BLO" role="2Oq$k0">
                <node concept="13iPFW" id="667ewDY3BAf" role="2Oq$k0" />
                <node concept="3Tsc0h" id="667ewDY3C2P" role="2OqNvi">
                  <ref role="3TtcxE" to="wl5u:1MxN4Cv9D9A" resolve="providedPoints" />
                </node>
              </node>
              <node concept="1z4cxt" id="667ewDY3Ge1" role="2OqNvi">
                <node concept="1bVj0M" id="667ewDY3Ge3" role="23t8la">
                  <node concept="3clFbS" id="667ewDY3Ge4" role="1bW5cS">
                    <node concept="3clFbF" id="667ewDY3Gor" role="3cqZAp">
                      <node concept="17R0WA" id="667ewDY3Hxs" role="3clFbG">
                        <node concept="37vLTw" id="667ewDY3HDW" role="3uHU7w">
                          <ref role="3cqZAo" node="667ewDY3ByC" resolve="req" />
                        </node>
                        <node concept="2OqwBi" id="667ewDY3GA$" role="3uHU7B">
                          <node concept="37vLTw" id="667ewDY3Goq" role="2Oq$k0">
                            <ref role="3cqZAo" node="667ewDY3Ge5" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="667ewDY3GTI" role="2OqNvi">
                            <ref role="3Tt5mk" to="wl5u:667ewDXZ_wV" resolve="required" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="667ewDY3Ge5" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="667ewDY3Ge6" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrEf2" id="667ewDY3Ieq" role="2OqNvi">
              <ref role="3Tt5mk" to="wl5u:667ewDXZ_wX" resolve="actual" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="667ewDY3ByC" role="3clF46">
        <property role="TrG5h" value="req" />
        <node concept="3Tqbb2" id="667ewDY3H9l" role="1tU5fm">
          <ref role="ehGHo" to="wl5u:667ewDXZ7tS" resolve="RequiredPoint" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2B9hOR0EJJK">
    <property role="3GE5qa" value="product.requirement" />
    <ref role="13h7C2" to="wl5u:2B9hOR0EJJj" resolve="ComplexityRequirement" />
    <node concept="13hLZK" id="2B9hOR0EJJL" role="13h7CW">
      <node concept="3clFbS" id="2B9hOR0EJJM" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2B9hOR0EJJV" role="13h7CS">
      <property role="TrG5h" value="check" />
      <ref role="13i0hy" node="1MxN4Cv4oxu" resolve="check" />
      <node concept="3Tm1VV" id="2B9hOR0EJJW" role="1B3o_S" />
      <node concept="3clFbS" id="2B9hOR0EJK1" role="3clF47">
        <node concept="3clFbH" id="2B9hOR0G5xh" role="3cqZAp" />
        <node concept="3cpWs8" id="2B9hOR0G5$K" role="3cqZAp">
          <node concept="3cpWsn" id="2B9hOR0G5$N" role="3cpWs9">
            <property role="TrG5h" value="actual" />
            <node concept="10Oyi0" id="2B9hOR0G5$I" role="1tU5fm" />
            <node concept="2OqwBi" id="2B9hOR0G5JL" role="33vP2m">
              <node concept="37vLTw" id="2B9hOR0G5_u" role="2Oq$k0">
                <ref role="3cqZAo" node="2B9hOR0EJK2" resolve="world" />
              </node>
              <node concept="liA8E" id="2B9hOR0G5US" role="2OqNvi">
                <ref role="37wK5l" to="i1wt:2B9hOR0EMOF" resolve="getNMovingParts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2B9hOR0G65d" role="3cqZAp">
          <node concept="3cpWsn" id="2B9hOR0G65g" role="3cpWs9">
            <property role="TrG5h" value="ok" />
            <node concept="10P_77" id="2B9hOR0G659" role="1tU5fm" />
            <node concept="2dkUwp" id="2B9hOR0G6Vy" role="33vP2m">
              <node concept="2OqwBi" id="2B9hOR0G7mD" role="3uHU7w">
                <node concept="13iPFW" id="2B9hOR0G6W6" role="2Oq$k0" />
                <node concept="3TrcHB" id="2B9hOR0G7_m" role="2OqNvi">
                  <ref role="3TsBF5" to="wl5u:2B9hOR0EJLo" resolve="maxMovingParts" />
                </node>
              </node>
              <node concept="37vLTw" id="2B9hOR0G66t" role="3uHU7B">
                <ref role="3cqZAo" node="2B9hOR0G5$N" resolve="actual" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B9hOR0G7Hg" role="3cqZAp" />
        <node concept="3cpWs8" id="2B9hOR0G7KX" role="3cqZAp">
          <node concept="3cpWsn" id="2B9hOR0G7L0" role="3cpWs9">
            <property role="TrG5h" value="expl" />
            <node concept="17QB3L" id="2B9hOR0G7KV" role="1tU5fm" />
            <node concept="3cpWs3" id="2B9hOR0G8Yb" role="33vP2m">
              <node concept="Xl_RD" id="2B9hOR0G8Ye" role="3uHU7w">
                <property role="Xl_RC" value=" moving parts. " />
              </node>
              <node concept="3cpWs3" id="2B9hOR0G8dn" role="3uHU7B">
                <node concept="Xl_RD" id="2B9hOR0G7Uy" role="3uHU7B">
                  <property role="Xl_RC" value="The actual product has " />
                </node>
                <node concept="37vLTw" id="2B9hOR0G8du" role="3uHU7w">
                  <ref role="3cqZAo" node="2B9hOR0G5$N" resolve="actual" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2B9hOR0G9cF" role="3cqZAp">
          <node concept="3clFbS" id="2B9hOR0G9cH" role="3clFbx">
            <node concept="3clFbF" id="2B9hOR0G9ts" role="3cqZAp">
              <node concept="d57v9" id="2B9hOR0G9Ji" role="3clFbG">
                <node concept="Xl_RD" id="2B9hOR0G9Jp" role="37vLTx">
                  <property role="Xl_RC" value="This satisfies the expected maximum." />
                </node>
                <node concept="37vLTw" id="2B9hOR0G9tq" role="37vLTJ">
                  <ref role="3cqZAo" node="2B9hOR0G7L0" resolve="expl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2B9hOR0G9q2" role="3clFbw">
            <ref role="3cqZAo" node="2B9hOR0G65g" resolve="ok" />
          </node>
          <node concept="9aQIb" id="2B9hOR0Ga4k" role="9aQIa">
            <node concept="3clFbS" id="2B9hOR0Ga4l" role="9aQI4">
              <node concept="3clFbF" id="2B9hOR0Ga7I" role="3cqZAp">
                <node concept="d57v9" id="2B9hOR0Gap$" role="3clFbG">
                  <node concept="3cpWs3" id="2B9hOR0Gd0q" role="37vLTx">
                    <node concept="Xl_RD" id="2B9hOR0Gd0t" role="3uHU7w">
                      <property role="Xl_RC" value=" above the expected limit." />
                    </node>
                    <node concept="3cpWs3" id="2B9hOR0GaPC" role="3uHU7B">
                      <node concept="Xl_RD" id="2B9hOR0GapR" role="3uHU7B">
                        <property role="Xl_RC" value="This is " />
                      </node>
                      <node concept="1eOMI4" id="2B9hOR0GaQ0" role="3uHU7w">
                        <node concept="3cpWsd" id="2B9hOR0GbBY" role="1eOMHV">
                          <node concept="2OqwBi" id="2B9hOR0GbS5" role="3uHU7w">
                            <node concept="13iPFW" id="2B9hOR0GbC5" role="2Oq$k0" />
                            <node concept="3TrcHB" id="2B9hOR0Gc7s" role="2OqNvi">
                              <ref role="3TsBF5" to="wl5u:2B9hOR0EJLo" resolve="maxMovingParts" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2B9hOR0GaQp" role="3uHU7B">
                            <ref role="3cqZAo" node="2B9hOR0G5$N" resolve="actual" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2B9hOR0Ga7H" role="37vLTJ">
                    <ref role="3cqZAo" node="2B9hOR0G7L0" resolve="expl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B9hOR0Gd$Z" role="3cqZAp" />
        <node concept="3clFbF" id="2B9hOR0GdJ1" role="3cqZAp">
          <node concept="BsUDl" id="2B9hOR0GdIZ" role="3clFbG">
            <ref role="37wK5l" node="2B9hOR0EkzS" resolve="setStatus" />
            <node concept="37vLTw" id="2B9hOR0GdYz" role="37wK5m">
              <ref role="3cqZAo" node="2B9hOR0G65g" resolve="ok" />
            </node>
            <node concept="37vLTw" id="2B9hOR0GdYW" role="37wK5m">
              <ref role="3cqZAo" node="2B9hOR0G7L0" resolve="expl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2B9hOR0EJK2" role="3clF46">
        <property role="TrG5h" value="world" />
        <node concept="3uibUv" id="2B9hOR0EJK3" role="1tU5fm">
          <ref role="3uigEE" to="i1wt:6h7RWbAoVgT" resolve="BoxWorld" />
        </node>
      </node>
      <node concept="3cqZAl" id="2B9hOR0EJK4" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="2B9hOR0GFMh">
    <property role="3GE5qa" value="product.requirement" />
    <ref role="13h7C2" to="wl5u:2B9hOR0GFLh" resolve="TextOnlyRequirement" />
    <node concept="13hLZK" id="2B9hOR0GFMi" role="13h7CW">
      <node concept="3clFbS" id="2B9hOR0GFMj" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2B9hOR0GFR2" role="13h7CS">
      <property role="TrG5h" value="canBeChecked" />
      <ref role="13i0hy" node="2B9hOR0GF$5" resolve="canBeChecked" />
      <node concept="3Tm1VV" id="2B9hOR0GFR3" role="1B3o_S" />
      <node concept="3clFbS" id="2B9hOR0GFR8" role="3clF47">
        <node concept="3clFbF" id="2B9hOR0GG2g" role="3cqZAp">
          <node concept="3clFbT" id="2B9hOR0GG2f" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="2B9hOR0GFR9" role="3clF45" />
    </node>
  </node>
</model>
