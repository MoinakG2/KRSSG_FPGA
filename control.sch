<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="h1" />
        <signal name="h2" />
        <signal name="h3" />
        <signal name="Q1H" />
        <signal name="Q1L" />
        <signal name="Q2H" />
        <signal name="Q2L" />
        <signal name="Q3H" />
        <signal name="Q3L" />
        <signal name="XLXN_13(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="h1" />
        <port polarity="Input" name="h2" />
        <port polarity="Input" name="h3" />
        <port polarity="Output" name="Q1H" />
        <port polarity="Output" name="Q1L" />
        <port polarity="Output" name="Q2H" />
        <port polarity="Output" name="Q2L" />
        <port polarity="Output" name="Q3H" />
        <port polarity="Output" name="Q3L" />
        <port polarity="Input" name="XLXN_13(7:0)" />
        <blockdef name="motorV">
            <timestamp>2019-5-8T11:52:32</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="motor7bitpwm">
            <timestamp>2019-5-8T11:55:2</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="motorV" name="XLXI_1">
            <blockpin signalname="h1" name="h1" />
            <blockpin signalname="h2" name="h2" />
            <blockpin signalname="h3" name="h3" />
            <blockpin signalname="XLXN_3" name="p" />
            <blockpin signalname="XLXN_2" name="sign" />
            <blockpin signalname="Q1H" name="Q1H" />
            <blockpin signalname="Q1L" name="Q1L" />
            <blockpin signalname="Q2H" name="Q2H" />
            <blockpin signalname="Q2L" name="Q2L" />
            <blockpin signalname="Q3H" name="Q3H" />
            <blockpin signalname="Q3L" name="Q3L" />
        </block>
        <block symbolname="motor7bitpwm" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_13(7:0)" name="pwm_in(7:0)" />
            <blockpin signalname="XLXN_3" name="pwm" />
            <blockpin signalname="XLXN_2" name="sign" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2128" y="1264" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="848" y1="912" y2="912" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="912" name="clk" orien="R180" />
        <branch name="XLXN_2">
            <wire x2="1680" y1="976" y2="976" x1="1232" />
            <wire x2="1680" y1="976" y2="1232" x1="1680" />
            <wire x2="2128" y1="1232" y2="1232" x1="1680" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1696" y1="912" y2="912" x1="1232" />
            <wire x2="1696" y1="912" y2="1152" x1="1696" />
            <wire x2="2128" y1="1152" y2="1152" x1="1696" />
        </branch>
        <branch name="h1">
            <wire x2="2128" y1="912" y2="912" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2096" y="912" name="h1" orien="R180" />
        <branch name="h2">
            <wire x2="2128" y1="992" y2="992" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2096" y="992" name="h2" orien="R180" />
        <branch name="h3">
            <wire x2="2128" y1="1072" y2="1072" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1072" name="h3" orien="R180" />
        <branch name="Q1H">
            <wire x2="2544" y1="912" y2="912" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="912" name="Q1H" orien="R0" />
        <branch name="Q1L">
            <wire x2="2544" y1="976" y2="976" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="976" name="Q1L" orien="R0" />
        <branch name="Q2H">
            <wire x2="2544" y1="1040" y2="1040" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1040" name="Q2H" orien="R0" />
        <branch name="Q2L">
            <wire x2="2544" y1="1104" y2="1104" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1104" name="Q2L" orien="R0" />
        <branch name="Q3H">
            <wire x2="2544" y1="1168" y2="1168" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1168" name="Q3H" orien="R0" />
        <branch name="Q3L">
            <wire x2="2544" y1="1232" y2="1232" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1232" name="Q3L" orien="R0" />
        <branch name="XLXN_13(7:0)">
            <wire x2="848" y1="976" y2="976" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="976" name="XLXN_13(7:0)" orien="R180" />
        <instance x="848" y="1008" name="XLXI_3" orien="R0">
        </instance>
    </sheet>
</drawing>