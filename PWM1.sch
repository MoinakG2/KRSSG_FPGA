<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="CLK" />
        <signal name="input_1" />
        <signal name="input_2" />
        <signal name="input_4" />
        <signal name="input_8" />
        <signal name="XLXN_16" />
        <signal name="T1" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="HIGH" />
        <signal name="XLXN_47" />
        <signal name="T2" />
        <signal name="input_16" />
        <signal name="input_32" />
        <signal name="input_64" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_56" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="input_1" />
        <port polarity="Input" name="input_2" />
        <port polarity="Input" name="input_4" />
        <port polarity="Input" name="input_8" />
        <port polarity="Input" name="T1" />
        <port polarity="Input" name="HIGH" />
        <port polarity="Output" name="T2" />
        <port polarity="Input" name="input_16" />
        <port polarity="Input" name="input_32" />
        <port polarity="Input" name="input_64" />
        <blockdef name="ftc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nand7">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-448" y2="-64" x1="64" />
            <arc ex="144" ey="-304" sx="144" sy="-208" r="48" cx="144" cy="-256" />
            <line x2="144" y1="-304" y2="-304" x1="64" />
            <line x2="64" y1="-208" y2="-208" x1="144" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="216" y1="-256" y2="-256" x1="256" />
            <circle r="12" cx="204" cy="-256" />
        </blockdef>
        <blockdef name="or7">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="72" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-256" y2="-256" x1="256" />
            <arc ex="112" ey="-304" sx="192" sy="-256" r="88" cx="116" cy="-216" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="192" ey="-256" sx="112" sy="-208" r="88" cx="116" cy="-296" />
            <line x2="48" y1="-304" y2="-304" x1="112" />
            <line x2="48" y1="-448" y2="-304" x1="48" />
            <line x2="48" y1="-64" y2="-208" x1="48" />
            <arc ex="48" ey="-304" sx="48" sy="-208" r="56" cx="16" cy="-256" />
        </blockdef>
        <block symbolname="ftc" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="T1" name="T" />
            <blockpin signalname="XLXN_40" name="Q" />
        </block>
        <block symbolname="ftc" name="XLXI_2">
            <blockpin signalname="XLXN_40" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="T1" name="T" />
            <blockpin signalname="XLXN_39" name="Q" />
        </block>
        <block symbolname="ftc" name="XLXI_3">
            <blockpin signalname="XLXN_39" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="T1" name="T" />
            <blockpin signalname="XLXN_3" name="Q" />
        </block>
        <block symbolname="ftc" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="T1" name="T" />
            <blockpin signalname="XLXN_56" name="Q" />
        </block>
        <block symbolname="xnor2" name="XLXI_11">
            <blockpin signalname="input_1" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_12">
            <blockpin signalname="input_2" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_13">
            <blockpin signalname="input_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_14">
            <blockpin signalname="input_8" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="ftc" name="XLXI_15">
            <blockpin signalname="XLXN_41" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="HIGH" name="T" />
            <blockpin signalname="XLXN_47" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="XLXN_69" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="XLXN_47" name="I" />
            <blockpin signalname="T2" name="O" />
        </block>
        <block symbolname="ftc" name="XLXI_20">
            <blockpin signalname="XLXN_56" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="T1" name="T" />
            <blockpin signalname="XLXN_52" name="Q" />
        </block>
        <block symbolname="ftc" name="XLXI_21">
            <blockpin signalname="XLXN_52" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="T1" name="T" />
            <blockpin signalname="XLXN_53" name="Q" />
        </block>
        <block symbolname="ftc" name="XLXI_22">
            <blockpin signalname="XLXN_53" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="T1" name="T" />
            <blockpin signalname="XLXN_68" name="Q" />
        </block>
        <block symbolname="xnor2" name="XLXI_23">
            <blockpin signalname="input_16" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_24">
            <blockpin signalname="input_32" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_25">
            <blockpin signalname="input_64" name="I0" />
            <blockpin signalname="XLXN_68" name="I1" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="nand7" name="XLXI_26">
            <blockpin signalname="XLXN_62" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="XLXN_64" name="I2" />
            <blockpin signalname="XLXN_61" name="I3" />
            <blockpin signalname="XLXN_65" name="I4" />
            <blockpin signalname="XLXN_16" name="I5" />
            <blockpin signalname="XLXN_66" name="I6" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="or7" name="XLXI_27">
            <blockpin signalname="XLXN_56" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_39" name="I2" />
            <blockpin signalname="XLXN_40" name="I3" />
            <blockpin signalname="XLXN_68" name="I4" />
            <blockpin signalname="XLXN_53" name="I5" />
            <blockpin signalname="XLXN_52" name="I6" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="1136" name="XLXI_2" orien="R0" />
        <instance x="1744" y="1104" name="XLXI_3" orien="R0" />
        <instance x="2288" y="1104" name="XLXI_4" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="2128" y1="848" y2="976" x1="2128" />
            <wire x2="2192" y1="976" y2="976" x1="2128" />
            <wire x2="2288" y1="976" y2="976" x1="2192" />
            <wire x2="2192" y1="976" y2="992" x1="2192" />
            <wire x2="2192" y1="992" y2="1504" x1="2192" />
            <wire x2="2160" y1="400" y2="992" x1="2160" />
            <wire x2="2192" y1="992" y2="992" x1="2160" />
            <wire x2="2720" y1="400" y2="400" x1="2160" />
        </branch>
        <branch name="CLK">
            <wire x2="448" y1="1008" y2="1008" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="1008" name="CLK" orien="R180" />
        <branch name="T1">
            <wire x2="448" y1="880" y2="880" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="880" name="T1" orien="R180" />
        <branch name="T1">
            <wire x2="1120" y1="880" y2="880" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1088" y="880" name="T1" orien="R180" />
        <branch name="T1">
            <wire x2="1744" y1="848" y2="848" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1712" y="848" name="T1" orien="R180" />
        <branch name="input_1">
            <wire x2="832" y1="1360" y2="1360" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1360" name="input_1" orien="R180" />
        <branch name="input_2">
            <wire x2="1552" y1="1440" y2="1440" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1440" name="input_2" orien="R180" />
        <branch name="input_4">
            <wire x2="2192" y1="1568" y2="1568" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1568" name="input_4" orien="R180" />
        <branch name="input_8">
            <wire x2="2720" y1="1680" y2="1680" x1="2704" />
            <wire x2="2736" y1="1680" y2="1680" x1="2720" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2896" y1="1408" y2="1408" x1="1808" />
            <wire x2="2960" y1="1408" y2="1408" x1="2896" />
            <wire x2="2960" y1="1408" y2="1520" x1="2960" />
            <wire x2="3024" y1="1520" y2="1520" x1="2960" />
        </branch>
        <branch name="T1">
            <wire x2="2288" y1="848" y2="848" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2256" y="848" name="T1" orien="R180" />
        <instance x="832" y="1424" name="XLXI_11" orien="R0" />
        <instance x="1552" y="1504" name="XLXI_12" orien="R0" />
        <instance x="2192" y="1632" name="XLXI_13" orien="R0" />
        <instance x="3104" y="1216" name="XLXI_15" orien="R0" />
        <instance x="448" y="1136" name="XLXI_1" orien="R0" />
        <branch name="XLXN_39">
            <wire x2="1504" y1="880" y2="976" x1="1504" />
            <wire x2="1552" y1="976" y2="976" x1="1504" />
            <wire x2="1744" y1="976" y2="976" x1="1552" />
            <wire x2="1552" y1="976" y2="1376" x1="1552" />
            <wire x2="2720" y1="336" y2="336" x1="1552" />
            <wire x2="1552" y1="336" y2="976" x1="1552" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="832" y1="880" y2="1008" x1="832" />
            <wire x2="832" y1="1008" y2="1296" x1="832" />
            <wire x2="896" y1="1008" y2="1008" x1="832" />
            <wire x2="1120" y1="1008" y2="1008" x1="896" />
            <wire x2="2720" y1="272" y2="272" x1="896" />
            <wire x2="896" y1="272" y2="1008" x1="896" />
        </branch>
        <instance x="3024" y="1280" name="XLXI_18" orien="R270" />
        <branch name="XLXN_41">
            <wire x2="2928" y1="960" y2="1024" x1="2928" />
            <wire x2="3040" y1="960" y2="960" x1="2928" />
            <wire x2="3040" y1="960" y2="1088" x1="3040" />
            <wire x2="3104" y1="1088" y2="1088" x1="3040" />
        </branch>
        <branch name="HIGH">
            <wire x2="3104" y1="960" y2="960" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3072" y="960" name="HIGH" orien="R270" />
        <instance x="3456" y="800" name="XLXI_19" orien="R270" />
        <branch name="XLXN_47">
            <wire x2="3424" y1="800" y2="880" x1="3424" />
            <wire x2="3504" y1="880" y2="880" x1="3424" />
            <wire x2="3504" y1="880" y2="960" x1="3504" />
            <wire x2="3504" y1="960" y2="960" x1="3488" />
        </branch>
        <branch name="T2">
            <wire x2="3424" y1="544" y2="576" x1="3424" />
        </branch>
        <iomarker fontsize="28" x="3424" y="544" name="T2" orien="R270" />
        <instance x="2736" y="1744" name="XLXI_14" orien="R0" />
        <iomarker fontsize="28" x="2704" y="1680" name="input_8" orien="R180" />
        <instance x="1104" y="2080" name="XLXI_20" orien="R0" />
        <instance x="1728" y="2080" name="XLXI_21" orien="R0" />
        <instance x="2336" y="2080" name="XLXI_22" orien="R0" />
        <instance x="1488" y="2320" name="XLXI_23" orien="R0" />
        <instance x="2752" y="2512" name="XLXI_25" orien="R0" />
        <instance x="2160" y="2448" name="XLXI_24" orien="R0" />
        <branch name="input_16">
            <wire x2="1488" y1="2256" y2="2256" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1456" y="2256" name="input_16" orien="R180" />
        <branch name="input_32">
            <wire x2="2160" y1="2384" y2="2384" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2128" y="2384" name="input_32" orien="R180" />
        <branch name="input_64">
            <wire x2="2752" y1="2448" y2="2448" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2720" y="2448" name="input_64" orien="R180" />
        <branch name="XLXN_52">
            <wire x2="1104" y1="80" y2="1680" x1="1104" />
            <wire x2="1504" y1="1680" y2="1680" x1="1104" />
            <wire x2="1504" y1="1680" y2="1824" x1="1504" />
            <wire x2="1552" y1="1824" y2="1824" x1="1504" />
            <wire x2="1552" y1="1824" y2="2128" x1="1552" />
            <wire x2="1632" y1="1824" y2="1824" x1="1552" />
            <wire x2="1632" y1="1824" y2="1952" x1="1632" />
            <wire x2="1728" y1="1952" y2="1952" x1="1632" />
            <wire x2="2720" y1="80" y2="80" x1="1104" />
            <wire x2="1552" y1="2128" y2="2128" x1="1408" />
            <wire x2="1408" y1="2128" y2="2192" x1="1408" />
            <wire x2="1488" y1="2192" y2="2192" x1="1408" />
            <wire x2="1504" y1="1824" y2="1824" x1="1488" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="1536" y1="144" y2="1696" x1="1536" />
            <wire x2="2128" y1="1696" y2="1696" x1="1536" />
            <wire x2="2128" y1="1696" y2="1824" x1="2128" />
            <wire x2="2128" y1="1824" y2="2320" x1="2128" />
            <wire x2="2160" y1="2320" y2="2320" x1="2128" />
            <wire x2="2224" y1="1824" y2="1824" x1="2128" />
            <wire x2="2224" y1="1824" y2="1952" x1="2224" />
            <wire x2="2336" y1="1952" y2="1952" x1="2224" />
            <wire x2="2720" y1="144" y2="144" x1="1536" />
            <wire x2="2128" y1="1824" y2="1824" x1="2112" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="2720" y1="1616" y2="1616" x1="928" />
            <wire x2="2736" y1="1616" y2="1616" x1="2720" />
            <wire x2="928" y1="1616" y2="1952" x1="928" />
            <wire x2="1104" y1="1952" y2="1952" x1="928" />
            <wire x2="2736" y1="848" y2="848" x1="2672" />
            <wire x2="2720" y1="464" y2="656" x1="2720" />
            <wire x2="2736" y1="656" y2="656" x1="2720" />
            <wire x2="2736" y1="656" y2="832" x1="2736" />
            <wire x2="2736" y1="832" y2="848" x1="2736" />
            <wire x2="2736" y1="832" y2="832" x1="2720" />
            <wire x2="2720" y1="832" y2="1616" x1="2720" />
        </branch>
        <branch name="T1">
            <wire x2="1712" y1="1744" y2="1744" x1="1680" />
            <wire x2="1712" y1="1744" y2="1824" x1="1712" />
            <wire x2="1728" y1="1824" y2="1824" x1="1712" />
        </branch>
        <branch name="T1">
            <wire x2="2320" y1="1776" y2="1776" x1="2304" />
            <wire x2="2320" y1="1776" y2="1824" x1="2320" />
            <wire x2="2336" y1="1824" y2="1824" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1744" name="T1" orien="R180" />
        <iomarker fontsize="28" x="2304" y="1776" name="T1" orien="R180" />
        <branch name="T1">
            <wire x2="1088" y1="1824" y2="1824" x1="1072" />
            <wire x2="1104" y1="1824" y2="1824" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1824" name="T1" orien="R180" />
        <branch name="XLXN_61">
            <wire x2="3024" y1="1648" y2="1648" x1="2992" />
        </branch>
        <instance x="3024" y="1904" name="XLXI_26" orien="R0" />
        <branch name="XLXN_62">
            <wire x2="3024" y1="2416" y2="2416" x1="3008" />
            <wire x2="3024" y1="1840" y2="2416" x1="3024" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="2800" y1="2352" y2="2352" x1="2416" />
            <wire x2="2800" y1="1776" y2="2352" x1="2800" />
            <wire x2="3024" y1="1776" y2="1776" x1="2800" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="3008" y1="2224" y2="2224" x1="1744" />
            <wire x2="3008" y1="1712" y2="2224" x1="3008" />
            <wire x2="3024" y1="1712" y2="1712" x1="3008" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="2464" y1="1536" y2="1536" x1="2448" />
            <wire x2="2896" y1="1472" y2="1472" x1="2464" />
            <wire x2="2896" y1="1472" y2="1584" x1="2896" />
            <wire x2="3024" y1="1584" y2="1584" x1="2896" />
            <wire x2="2464" y1="1472" y2="1536" x1="2464" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="2896" y1="1328" y2="1328" x1="1088" />
            <wire x2="2896" y1="1328" y2="1344" x1="2896" />
            <wire x2="3024" y1="1344" y2="1344" x1="2896" />
            <wire x2="3024" y1="1344" y2="1456" x1="3024" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="2960" y1="1280" y2="1296" x1="2960" />
            <wire x2="3344" y1="1296" y2="1296" x1="2960" />
            <wire x2="3344" y1="1296" y2="1648" x1="3344" />
            <wire x2="3344" y1="1648" y2="1648" x1="3280" />
        </branch>
        <instance x="2720" y="528" name="XLXI_27" orien="R0" />
        <branch name="XLXN_68">
            <wire x2="2704" y1="1152" y2="1152" x1="2480" />
            <wire x2="2480" y1="1152" y2="1728" x1="2480" />
            <wire x2="2784" y1="1728" y2="1728" x1="2480" />
            <wire x2="2784" y1="1728" y2="1824" x1="2784" />
            <wire x2="2784" y1="1824" y2="2112" x1="2784" />
            <wire x2="2784" y1="2112" y2="2112" x1="2672" />
            <wire x2="2672" y1="2112" y2="2384" x1="2672" />
            <wire x2="2752" y1="2384" y2="2384" x1="2672" />
            <wire x2="2720" y1="208" y2="208" x1="2704" />
            <wire x2="2704" y1="208" y2="1152" x1="2704" />
            <wire x2="2784" y1="1824" y2="1824" x1="2720" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="2896" y1="1280" y2="1312" x1="2896" />
            <wire x2="3024" y1="1312" y2="1312" x1="2896" />
            <wire x2="3024" y1="272" y2="272" x1="2976" />
            <wire x2="3024" y1="272" y2="1312" x1="3024" />
        </branch>
    </sheet>
</drawing>