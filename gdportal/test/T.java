import com.gdportal.core.XmlLite;
public class T {
    public static void main(String[] a) {
        String x = "<config><ticket-url><![CDATA[http://h/t.cgi?a=1&b=2]]></ticket-url>"
                 + "<query-url><![CDATA[http://h/q.cgi]]></query-url>"
                 + "<state-interval>10</state-interval>"
                 + "<auth><type>cdc-http-pap</type></auth>"
                 + "<funcfg><Province name=\"GD\"/><Vpn enable=\"0\"/></funcfg></config>";
        XmlLite.Node r = XmlLite.parse(x);
        System.out.println("root children=" + r.children.size());
        for (XmlLite.Node n : r.children)
            System.out.println("  " + n.name + " text='" + n.text + "' kids=" + n.children.size() + " attrs=" + n.attrs);
    }
}
