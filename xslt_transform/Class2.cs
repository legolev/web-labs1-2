using System;
using System.IO;
using System.Xml;
using System.Xml.Xsl;
using System.Xml.XPath;

public class XmlTransformUtil
{

    public static void Main(string[] args)
    {

        if (args.Length == 2)
        {
            Transform(args[0], args[1]);
        }
        else
        {
            PrintUsage();
        }

    }

    public static void Transform(string sXmlPath, string sXslPath)
    {

        try
        {

            //подгружаем xml
            XPathDocument myXPathDoc = new XPathDocument(sXmlPath);

            XslTransform myXslTrans = new XslTransform();

            //подгружаем xslt
            myXslTrans.Load(sXslPath);

            //на выход в html
            XmlTextWriter myWriter = new XmlTextWriter
                ("result.html", null);

            //преобразование
            myXslTrans.Transform(myXPathDoc, null, myWriter);

            myWriter.Close();


        }
        catch (Exception e)
        {

            Console.WriteLine("Exception: {0}", e.ToString());
        }

    }


    public static void PrintUsage()
    {
        Console.WriteLine
        ("Usage: XmlTransformUtil.exe <xml path> <xsl path>");
    }

}