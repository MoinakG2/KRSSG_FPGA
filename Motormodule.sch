<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6(6:0)" />
        <signal name="set_value(7:0)" />
        <signal name="Q1(1:0)" />
        <signal name="Q2(1:0)" />
        <signal name="Q3(1:0)" />
        <signal name="reset" />
        <signal name="clk" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_22" />
        <signal name="enc_in" />
        <signal name="XLXN_23" />
        <signal name="Hall(2:0)" />
        <port polarity="Input" name="set_value(7:0)" />
        <port polarity="Output" name="Q1(1:0)" />
        <port polarity="Output" name="Q2(1:0)" />
        <port polarity="Output" name="Q3(1:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="enc_in" />
        <port polarity="Input" name="Hall(2:0)" />
        <blockdef name="Encoder">
            <timestamp>2020-8-1T22:48:53</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Motorcontrol">
            <timestamp>2020-8-2T10:53:9</timestamp>
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="512" />
        </blockdef>
        <blockdef name="Pid_control">
            <timestamp>2020-8-2T8:40:9</timestamp>
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="304" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="Pwm">
            <timestamp>2020-8-2T8:1:36</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Encoder" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="enc_in" name="pulse" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_22" name="new_clk" />
            <blockpin signalname="XLXN_6(6:0)" name="enc(6:0)" />
        </block>
        <block symbolname="Motorcontrol" name="XLXI_2">
            <blockpin signalname="XLXN_23" name="brake" />
            <blockpin signalname="XLXN_5" name="pwm" />
            <blockpin signalname="XLXN_4" name="dir" />
            <blockpin signalname="Q1(1:0)" name="a(1:0)" />
            <blockpin signalname="Q2(1:0)" name="b(1:0)" />
            <blockpin signalname="Q3(1:0)" name="c(1:0)" />
            <blockpin signalname="Hall(2:0)" name="Hall(2:0)" />
        </block>
        <block symbolname="Pid_control" name="XLXI_3">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_22" name="clk" />
            <blockpin signalname="set_value(7:0)" name="target(7:0)" />
            <blockpin signalname="XLXN_6(6:0)" name="enc_data(6:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="pwm_val(7:0)" />
            <blockpin signalname="XLXN_23" name="brake" />
        </block>
        <block symbolname="Pwm" name="XLXI_4">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_3(7:0)" name="pwm_val(7:0)" />
            <blockpin signalname="XLXN_5" name="pwm" />
            <blockpin signalname="XLXN_4" name="dir" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="960" y="1632" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2592" y="1456" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1536" y="1424" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2112" y="1296" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="2544" y1="1264" y2="1264" x1="2496" />
            <wire x2="2544" y1="1264" y2="1360" x1="2544" />
            <wire x2="2592" y1="1360" y2="1360" x1="2544" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2560" y1="1136" y2="1136" x1="2496" />
            <wire x2="2560" y1="1136" y2="1232" x1="2560" />
            <wire x2="2560" y1="1232" y2="1296" x1="2560" />
            <wire x2="2592" y1="1296" y2="1296" x1="2560" />
        </branch>
        <branch name="XLXN_6(6:0)">
            <wire x2="1456" y1="1600" y2="1600" x1="1344" />
            <wire x2="1456" y1="1392" y2="1600" x1="1456" />
            <wire x2="1536" y1="1392" y2="1392" x1="1456" />
        </branch>
        <branch name="set_value(7:0)">
            <wire x2="1536" y1="1328" y2="1328" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1504" y="1328" name="set_value(7:0)" orien="R180" />
        <branch name="Q1(1:0)">
            <wire x2="3008" y1="1232" y2="1232" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="1232" name="Q1(1:0)" orien="R0" />
        <branch name="Q2(1:0)">
            <wire x2="3008" y1="1328" y2="1328" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="1328" name="Q2(1:0)" orien="R0" />
        <branch name="Q3(1:0)">
            <wire x2="3008" y1="1424" y2="1424" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="1424" name="Q3(1:0)" orien="R0" />
        <branch name="clk">
            <wire x2="960" y1="1472" y2="1472" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="1472" name="clk" orien="R180" />
        <branch name="reset">
            <wire x2="960" y1="1600" y2="1600" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="1600" name="reset" orien="R180" />
        <branch name="reset">
            <wire x2="1536" y1="1200" y2="1200" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1504" y="1200" name="reset" orien="R180" />
        <branch name="reset">
            <wire x2="2096" y1="1104" y2="1104" x1="2064" />
            <wire x2="2096" y1="1104" y2="1136" x1="2096" />
            <wire x2="2112" y1="1136" y2="1136" x1="2096" />
        </branch>
        <branch name="clk">
            <wire x2="2096" y1="1152" y2="1152" x1="2080" />
            <wire x2="2096" y1="1152" y2="1200" x1="2096" />
            <wire x2="2112" y1="1200" y2="1200" x1="2096" />
        </branch>
        <branch name="XLXN_3(7:0)">
            <wire x2="2032" y1="1200" y2="1200" x1="1968" />
            <wire x2="2032" y1="1200" y2="1264" x1="2032" />
            <wire x2="2112" y1="1264" y2="1264" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2064" y="1104" name="reset" orien="R180" />
        <iomarker fontsize="28" x="2080" y="1152" name="clk" orien="R180" />
        <branch name="XLXN_22">
            <wire x2="1520" y1="1472" y2="1472" x1="1344" />
            <wire x2="1520" y1="1264" y2="1472" x1="1520" />
            <wire x2="1536" y1="1264" y2="1264" x1="1520" />
        </branch>
        <branch name="enc_in">
            <wire x2="960" y1="1536" y2="1536" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="1536" name="enc_in" orien="R180" />
        <branch name="XLXN_23">
            <wire x2="2032" y1="1456" y2="1456" x1="1968" />
            <wire x2="2032" y1="1456" y2="1520" x1="2032" />
            <wire x2="2576" y1="1520" y2="1520" x1="2032" />
            <wire x2="2576" y1="1232" y2="1520" x1="2576" />
            <wire x2="2592" y1="1232" y2="1232" x1="2576" />
        </branch>
        <branch name="Hall(2:0)">
            <wire x2="2592" y1="1680" y2="1680" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1680" name="Hall(2:0)" orien="R180" />
    </sheet>
</drawing>