<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S1" />
        <signal name="S2" />
        <signal name="S3" />
        <signal name="Y(7:0)" />
        <signal name="XLXN_8" />
        <signal name="Y(7)" />
        <signal name="Y(4)" />
        <signal name="Y(2)" />
        <signal name="Y(1)" />
        <signal name="F" />
        <signal name="Buzzer" />
        <signal name="LED(6:0)" />
        <signal name="LED(6)" />
        <signal name="LED(5)" />
        <signal name="LED(4)" />
        <signal name="LED(3)" />
        <signal name="LED(2)" />
        <signal name="LED(1)" />
        <signal name="LED(0)" />
        <signal name="XLXN_34" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S3" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Output" name="LED(6:0)" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="nand4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
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
        <blockdef name="D_74LS138">
            <timestamp>2017-12-12T15:34:31</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_34" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_36" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="XLXN_37" name="G" />
        </block>
        <block symbolname="nand4" name="XLXI_8">
            <blockpin signalname="Y(7)" name="I0" />
            <blockpin signalname="Y(4)" name="I1" />
            <blockpin signalname="Y(2)" name="I2" />
            <blockpin signalname="Y(1)" name="I3" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="Buzzer" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="LED(0)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="LED(1)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="LED(2)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="LED(3)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="LED(4)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_16">
            <blockpin signalname="LED(5)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_17">
            <blockpin signalname="LED(6)" name="P" />
        </block>
        <block symbolname="D_74LS138" name="XLXI_18">
            <blockpin signalname="S1" name="A" />
            <blockpin signalname="S2" name="B" />
            <blockpin signalname="S3" name="C" />
            <blockpin signalname="XLXN_34" name="G" />
            <blockpin signalname="XLXN_36" name="G2A" />
            <blockpin signalname="XLXN_37" name="G2B" />
            <blockpin signalname="Y(7:0)" name="Y(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="S1">
            <wire x2="896" y1="704" y2="704" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="704" name="S1" orien="R180" />
        <branch name="S2">
            <wire x2="896" y1="768" y2="768" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="768" name="S2" orien="R180" />
        <branch name="S3">
            <wire x2="896" y1="832" y2="832" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="832" name="S3" orien="R180" />
        <branch name="Y(7:0)">
            <wire x2="1376" y1="704" y2="704" x1="1280" />
            <wire x2="1376" y1="704" y2="848" x1="1376" />
            <wire x2="1376" y1="848" y2="912" x1="1376" />
            <wire x2="1376" y1="912" y2="976" x1="1376" />
            <wire x2="1376" y1="976" y2="1040" x1="1376" />
            <wire x2="1376" y1="1040" y2="1296" x1="1376" />
        </branch>
        <instance x="1632" y="1104" name="XLXI_8" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1920" y1="944" y2="944" x1="1888" />
        </branch>
        <instance x="1920" y="976" name="XLXI_9" orien="R0" />
        <instance x="512" y="1472" name="XLXI_11" orien="R0" />
        <instance x="608" y="1472" name="XLXI_12" orien="R0" />
        <instance x="704" y="1472" name="XLXI_13" orien="R0" />
        <instance x="800" y="1472" name="XLXI_14" orien="R0" />
        <instance x="896" y="1472" name="XLXI_15" orien="R0" />
        <instance x="992" y="1472" name="XLXI_16" orien="R0" />
        <instance x="1088" y="1472" name="XLXI_17" orien="R0" />
        <bustap x2="1472" y1="1040" y2="1040" x1="1376" />
        <branch name="Y(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1040" type="branch" />
            <wire x2="1552" y1="1040" y2="1040" x1="1472" />
            <wire x2="1632" y1="1040" y2="1040" x1="1552" />
        </branch>
        <bustap x2="1472" y1="976" y2="976" x1="1376" />
        <branch name="Y(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="976" type="branch" />
            <wire x2="1552" y1="976" y2="976" x1="1472" />
            <wire x2="1632" y1="976" y2="976" x1="1552" />
        </branch>
        <bustap x2="1472" y1="912" y2="912" x1="1376" />
        <branch name="Y(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="912" type="branch" />
            <wire x2="1552" y1="912" y2="912" x1="1472" />
            <wire x2="1632" y1="912" y2="912" x1="1552" />
        </branch>
        <bustap x2="1472" y1="848" y2="848" x1="1376" />
        <branch name="Y(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="848" type="branch" />
            <wire x2="1552" y1="848" y2="848" x1="1472" />
            <wire x2="1632" y1="848" y2="848" x1="1552" />
        </branch>
        <branch name="F">
            <wire x2="2176" y1="944" y2="944" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2176" y="944" name="F" orien="R0" />
        <instance x="560" y="1296" name="XLXI_10" orien="R0" />
        <branch name="Buzzer">
            <wire x2="624" y1="1296" y2="1312" x1="624" />
            <wire x2="912" y1="1312" y2="1312" x1="624" />
        </branch>
        <iomarker fontsize="28" x="912" y="1312" name="Buzzer" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1584" name="LED(6:0)" orien="R0" />
        <branch name="LED(6:0)">
            <wire x2="528" y1="1584" y2="1584" x1="464" />
            <wire x2="576" y1="1584" y2="1584" x1="528" />
            <wire x2="672" y1="1584" y2="1584" x1="576" />
            <wire x2="768" y1="1584" y2="1584" x1="672" />
            <wire x2="864" y1="1584" y2="1584" x1="768" />
            <wire x2="960" y1="1584" y2="1584" x1="864" />
            <wire x2="1056" y1="1584" y2="1584" x1="960" />
            <wire x2="1152" y1="1584" y2="1584" x1="1056" />
            <wire x2="1280" y1="1584" y2="1584" x1="1152" />
        </branch>
        <bustap x2="1152" y1="1584" y2="1488" x1="1152" />
        <branch name="LED(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1480" type="branch" />
            <wire x2="1152" y1="1472" y2="1488" x1="1152" />
        </branch>
        <bustap x2="1056" y1="1584" y2="1488" x1="1056" />
        <branch name="LED(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1480" type="branch" />
            <wire x2="1056" y1="1472" y2="1488" x1="1056" />
        </branch>
        <bustap x2="960" y1="1584" y2="1488" x1="960" />
        <branch name="LED(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1480" type="branch" />
            <wire x2="960" y1="1472" y2="1488" x1="960" />
        </branch>
        <bustap x2="864" y1="1584" y2="1488" x1="864" />
        <branch name="LED(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1480" type="branch" />
            <wire x2="864" y1="1472" y2="1488" x1="864" />
        </branch>
        <bustap x2="768" y1="1584" y2="1488" x1="768" />
        <branch name="LED(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1480" type="branch" />
            <wire x2="768" y1="1472" y2="1488" x1="768" />
        </branch>
        <bustap x2="672" y1="1584" y2="1488" x1="672" />
        <branch name="LED(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1480" type="branch" />
            <wire x2="672" y1="1472" y2="1488" x1="672" />
        </branch>
        <bustap x2="576" y1="1584" y2="1488" x1="576" />
        <branch name="LED(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1480" type="branch" />
            <wire x2="576" y1="1472" y2="1488" x1="576" />
        </branch>
        <instance x="720" y="1200" name="XLXI_7" orien="R0" />
        <instance x="528" y="1152" name="XLXI_6" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="544" y1="832" y2="896" x1="544" />
            <wire x2="896" y1="896" y2="896" x1="544" />
        </branch>
        <instance x="480" y="832" name="XLXI_5" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="896" y1="960" y2="960" x1="592" />
            <wire x2="592" y1="960" y2="1024" x1="592" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="896" y1="1024" y2="1024" x1="784" />
            <wire x2="784" y1="1024" y2="1072" x1="784" />
        </branch>
        <instance x="896" y="1056" name="XLXI_18" orien="R0">
        </instance>
    </sheet>
</drawing>