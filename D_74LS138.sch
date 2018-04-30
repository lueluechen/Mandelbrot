<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="G" />
        <signal name="G2A" />
        <signal name="G2B" />
        <signal name="NG" />
        <signal name="EN" />
        <signal name="D0" />
        <signal name="XLXN_67" />
        <signal name="D3" />
        <signal name="D2" />
        <signal name="D1" />
        <signal name="NA" />
        <signal name="NB" />
        <signal name="Y(7:0)" />
        <signal name="Y(7)" />
        <signal name="Y(6)" />
        <signal name="Y(5)" />
        <signal name="Y(4)" />
        <signal name="Y(3)" />
        <signal name="Y(2)" />
        <signal name="Y(1)" />
        <signal name="Y(0)" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="G" />
        <port polarity="Input" name="G2A" />
        <port polarity="Input" name="G2B" />
        <port polarity="Output" name="Y(7:0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="nor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
        </blockdef>
        <block symbolname="inv" name="INV_A">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="NA" name="O" />
        </block>
        <block symbolname="inv" name="INV_B">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="NB" name="O" />
        </block>
        <block symbolname="inv" name="INV_G">
            <blockpin signalname="G" name="I" />
            <blockpin signalname="NG" name="O" />
        </block>
        <block symbolname="inv" name="INV_C">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="and2" name="AND2_1">
            <blockpin signalname="NB" name="I0" />
            <blockpin signalname="NA" name="I1" />
            <blockpin signalname="D0" name="O" />
        </block>
        <block symbolname="and2" name="AND2_2">
            <blockpin signalname="NB" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="D1" name="O" />
        </block>
        <block symbolname="and2" name="AND2_3">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="NA" name="I1" />
            <blockpin signalname="D2" name="O" />
        </block>
        <block symbolname="and2" name="AND2_4">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="D3" name="O" />
        </block>
        <block symbolname="nand3" name="D_1">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="EN" name="I1" />
            <blockpin signalname="D0" name="I2" />
            <blockpin signalname="Y(0)" name="O" />
        </block>
        <block symbolname="nand3" name="D_2">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="EN" name="I1" />
            <blockpin signalname="D1" name="I2" />
            <blockpin signalname="Y(1)" name="O" />
        </block>
        <block symbolname="nand3" name="D_3">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="EN" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="Y(2)" name="O" />
        </block>
        <block symbolname="nand3" name="D_4">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="EN" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="Y(3)" name="O" />
        </block>
        <block symbolname="nand3" name="D_5">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="EN" name="I1" />
            <blockpin signalname="D0" name="I2" />
            <blockpin signalname="Y(4)" name="O" />
        </block>
        <block symbolname="nand3" name="D_6">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="EN" name="I1" />
            <blockpin signalname="D1" name="I2" />
            <blockpin signalname="Y(5)" name="O" />
        </block>
        <block symbolname="nand3" name="D_7">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="EN" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="Y(6)" name="O" />
        </block>
        <block symbolname="nand3" name="D_8">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="EN" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="Y(7)" name="O" />
        </block>
        <block symbolname="nor3" name="NOR_EN">
            <blockpin signalname="G2B" name="I0" />
            <blockpin signalname="NG" name="I1" />
            <blockpin signalname="G2A" name="I2" />
            <blockpin signalname="EN" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="208" y="384" name="A" orien="R180" />
        <iomarker fontsize="28" x="208" y="624" name="B" orien="R180" />
        <instance x="976" y="400" name="AND2_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="976" y="592" name="AND2_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1600" y="1296" name="D_5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1600" y="1728" name="D_7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1600" y="1952" name="D_8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="G">
            <wire x2="304" y1="1664" y2="1664" x1="224" />
        </branch>
        <branch name="G2B">
            <wire x2="656" y1="1888" y2="1888" x1="224" />
        </branch>
        <instance x="656" y="1952" name="NOR_EN" orien="R0" />
        <branch name="NG">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="554" y="1664" type="branch" />
            <wire x2="560" y1="1664" y2="1664" x1="528" />
            <wire x2="640" y1="1664" y2="1664" x1="560" />
            <wire x2="640" y1="1664" y2="1824" x1="640" />
            <wire x2="656" y1="1824" y2="1824" x1="640" />
        </branch>
        <iomarker fontsize="28" x="224" y="1760" name="G2A" orien="R180" />
        <branch name="G2A">
            <wire x2="656" y1="1760" y2="1760" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="1888" name="G2B" orien="R180" />
        <iomarker fontsize="28" x="224" y="1664" name="G" orien="R180" />
        <instance x="304" y="1696" name="INV_G" orien="R0" />
        <branch name="C">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="662" y="1232" type="branch" />
            <wire x2="656" y1="1232" y2="1232" x1="224" />
            <wire x2="864" y1="1232" y2="1232" x1="656" />
            <wire x2="1232" y1="1232" y2="1232" x1="864" />
            <wire x2="1600" y1="1232" y2="1232" x1="1232" />
            <wire x2="1232" y1="1232" y2="1440" x1="1232" />
            <wire x2="1232" y1="1440" y2="1664" x1="1232" />
            <wire x2="1600" y1="1664" y2="1664" x1="1232" />
            <wire x2="1232" y1="1664" y2="1888" x1="1232" />
            <wire x2="1600" y1="1888" y2="1888" x1="1232" />
            <wire x2="1600" y1="1440" y2="1440" x1="1232" />
            <wire x2="1008" y1="992" y2="992" x1="864" />
            <wire x2="864" y1="992" y2="1232" x1="864" />
        </branch>
        <branch name="D0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1334" y="304" type="branch" />
            <wire x2="1248" y1="304" y2="304" x1="1232" />
            <wire x2="1248" y1="304" y2="1104" x1="1248" />
            <wire x2="1600" y1="1104" y2="1104" x1="1248" />
            <wire x2="1328" y1="304" y2="304" x1="1248" />
            <wire x2="1600" y1="304" y2="304" x1="1328" />
        </branch>
        <instance x="1600" y="496" name="D_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1173" y="1824" type="branch" />
            <wire x2="1168" y1="1824" y2="1824" x1="912" />
            <wire x2="1536" y1="1824" y2="1824" x1="1168" />
            <wire x2="1600" y1="1824" y2="1824" x1="1536" />
            <wire x2="1600" y1="368" y2="368" x1="1536" />
            <wire x2="1536" y1="368" y2="560" x1="1536" />
            <wire x2="1600" y1="560" y2="560" x1="1536" />
            <wire x2="1536" y1="560" y2="736" x1="1536" />
            <wire x2="1600" y1="736" y2="736" x1="1536" />
            <wire x2="1536" y1="736" y2="928" x1="1536" />
            <wire x2="1536" y1="928" y2="1168" x1="1536" />
            <wire x2="1600" y1="1168" y2="1168" x1="1536" />
            <wire x2="1536" y1="1168" y2="1376" x1="1536" />
            <wire x2="1536" y1="1376" y2="1600" x1="1536" />
            <wire x2="1600" y1="1600" y2="1600" x1="1536" />
            <wire x2="1536" y1="1600" y2="1824" x1="1536" />
            <wire x2="1600" y1="1376" y2="1376" x1="1536" />
            <wire x2="1600" y1="928" y2="928" x1="1536" />
        </branch>
        <instance x="1600" y="688" name="D_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="976" y="768" name="AND2_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1600" y="864" name="D_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="D2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1332" y="672" type="branch" />
            <wire x2="1328" y1="672" y2="672" x1="1232" />
            <wire x2="1408" y1="672" y2="672" x1="1328" />
            <wire x2="1408" y1="672" y2="1536" x1="1408" />
            <wire x2="1600" y1="1536" y2="1536" x1="1408" />
            <wire x2="1600" y1="672" y2="672" x1="1408" />
        </branch>
        <instance x="976" y="960" name="AND2_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="D3">
            <wire x2="1472" y1="864" y2="864" x1="1232" />
            <wire x2="1472" y1="864" y2="1760" x1="1472" />
            <wire x2="1600" y1="1760" y2="1760" x1="1472" />
            <wire x2="1600" y1="864" y2="864" x1="1472" />
        </branch>
        <instance x="1600" y="1056" name="D_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="XLXN_67">
            <wire x2="1296" y1="992" y2="992" x1="1232" />
            <wire x2="1600" y1="992" y2="992" x1="1296" />
            <wire x2="1600" y1="432" y2="432" x1="1296" />
            <wire x2="1296" y1="432" y2="624" x1="1296" />
            <wire x2="1600" y1="624" y2="624" x1="1296" />
            <wire x2="1296" y1="624" y2="800" x1="1296" />
            <wire x2="1600" y1="800" y2="800" x1="1296" />
            <wire x2="1296" y1="800" y2="992" x1="1296" />
        </branch>
        <instance x="1008" y="1024" name="INV_C" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <branch name="D1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="513" type="branch" />
            <wire x2="1344" y1="496" y2="496" x1="1232" />
            <wire x2="1600" y1="496" y2="496" x1="1344" />
            <wire x2="1344" y1="496" y2="512" x1="1344" />
            <wire x2="1344" y1="512" y2="1312" x1="1344" />
            <wire x2="1600" y1="1312" y2="1312" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="224" y="1232" name="C" orien="R180" />
        <branch name="A">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="771" y="384" type="branch" />
            <wire x2="384" y1="384" y2="384" x1="208" />
            <wire x2="768" y1="384" y2="384" x1="384" />
            <wire x2="832" y1="384" y2="384" x1="768" />
            <wire x2="832" y1="384" y2="464" x1="832" />
            <wire x2="976" y1="464" y2="464" x1="832" />
            <wire x2="832" y1="464" y2="832" x1="832" />
            <wire x2="976" y1="832" y2="832" x1="832" />
            <wire x2="384" y1="272" y2="384" x1="384" />
            <wire x2="560" y1="272" y2="272" x1="384" />
        </branch>
        <branch name="B">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="713" y="624" type="branch" />
            <wire x2="384" y1="624" y2="624" x1="208" />
            <wire x2="720" y1="624" y2="624" x1="384" />
            <wire x2="784" y1="624" y2="624" x1="720" />
            <wire x2="784" y1="624" y2="704" x1="784" />
            <wire x2="976" y1="704" y2="704" x1="784" />
            <wire x2="784" y1="704" y2="896" x1="784" />
            <wire x2="976" y1="896" y2="896" x1="784" />
            <wire x2="560" y1="528" y2="528" x1="384" />
            <wire x2="384" y1="528" y2="624" x1="384" />
        </branch>
        <instance x="560" y="304" name="INV_A" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <branch name="NA">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="804" y="272" type="branch" />
            <wire x2="800" y1="272" y2="272" x1="784" />
            <wire x2="960" y1="272" y2="272" x1="800" />
            <wire x2="976" y1="272" y2="272" x1="960" />
            <wire x2="960" y1="272" y2="640" x1="960" />
            <wire x2="976" y1="640" y2="640" x1="960" />
        </branch>
        <instance x="560" y="560" name="INV_B" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <branch name="NB">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="854" y="528" type="branch" />
            <wire x2="848" y1="528" y2="528" x1="784" />
            <wire x2="896" y1="528" y2="528" x1="848" />
            <wire x2="976" y1="528" y2="528" x1="896" />
            <wire x2="976" y1="336" y2="336" x1="896" />
            <wire x2="896" y1="336" y2="528" x1="896" />
        </branch>
        <branch name="Y(7:0)">
            <wire x2="2048" y1="304" y2="304" x1="2032" />
            <wire x2="2032" y1="304" y2="368" x1="2032" />
            <wire x2="2032" y1="368" y2="560" x1="2032" />
            <wire x2="2032" y1="560" y2="736" x1="2032" />
            <wire x2="2032" y1="736" y2="928" x1="2032" />
            <wire x2="2032" y1="928" y2="1168" x1="2032" />
            <wire x2="2032" y1="1168" y2="1376" x1="2032" />
            <wire x2="2032" y1="1376" y2="1552" x1="2032" />
            <wire x2="2032" y1="1552" y2="1600" x1="2032" />
            <wire x2="2032" y1="1600" y2="1616" x1="2032" />
            <wire x2="2032" y1="1616" y2="1824" x1="2032" />
            <wire x2="2032" y1="1824" y2="1888" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2048" y="304" name="Y(7:0)" orien="R0" />
        <instance x="1600" y="1504" name="D_6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <bustap x2="1936" y1="1824" y2="1824" x1="2032" />
        <branch name="Y(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1824" type="branch" />
            <wire x2="1904" y1="1824" y2="1824" x1="1856" />
            <wire x2="1920" y1="1824" y2="1824" x1="1904" />
            <wire x2="1936" y1="1824" y2="1824" x1="1920" />
        </branch>
        <bustap x2="1936" y1="1600" y2="1600" x1="2032" />
        <branch name="Y(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="1600" type="branch" />
            <wire x2="1920" y1="1600" y2="1600" x1="1856" />
            <wire x2="1936" y1="1600" y2="1600" x1="1920" />
        </branch>
        <bustap x2="1936" y1="1376" y2="1376" x1="2032" />
        <branch name="Y(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1376" type="branch" />
            <wire x2="1904" y1="1376" y2="1376" x1="1856" />
            <wire x2="1920" y1="1376" y2="1376" x1="1904" />
            <wire x2="1936" y1="1376" y2="1376" x1="1920" />
        </branch>
        <bustap x2="1936" y1="1168" y2="1168" x1="2032" />
        <branch name="Y(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1168" type="branch" />
            <wire x2="1904" y1="1168" y2="1168" x1="1856" />
            <wire x2="1920" y1="1168" y2="1168" x1="1904" />
            <wire x2="1936" y1="1168" y2="1168" x1="1920" />
        </branch>
        <bustap x2="1936" y1="928" y2="928" x1="2032" />
        <branch name="Y(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="928" type="branch" />
            <wire x2="1920" y1="928" y2="928" x1="1856" />
            <wire x2="1936" y1="928" y2="928" x1="1920" />
        </branch>
        <bustap x2="1936" y1="736" y2="736" x1="2032" />
        <branch name="Y(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="736" type="branch" />
            <wire x2="1920" y1="736" y2="736" x1="1856" />
            <wire x2="1936" y1="736" y2="736" x1="1920" />
        </branch>
        <bustap x2="1936" y1="560" y2="560" x1="2032" />
        <branch name="Y(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="560" type="branch" />
            <wire x2="1920" y1="560" y2="560" x1="1856" />
            <wire x2="1936" y1="560" y2="560" x1="1920" />
        </branch>
        <bustap x2="1936" y1="368" y2="368" x1="2032" />
        <branch name="Y(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="368" type="branch" />
            <wire x2="1920" y1="368" y2="368" x1="1856" />
            <wire x2="1936" y1="368" y2="368" x1="1920" />
        </branch>
    </sheet>
</drawing>