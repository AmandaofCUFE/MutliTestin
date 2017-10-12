package recommendation;

import java.io.StringReader;
import java.util.ArrayList;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.tokenattributes.CharTermAttribute;
import org.wltea.analyzer.lucene.IKAnalyzer;

/**
 *
 * @author lxw的大数据田地 -- lxw1234.com
 *
 */
public class IKdemo {

    public static String keyword(String keyword){

    return keyword;
    }
    public static void main(String[] args) throws Exception {
       String key= keyword("朝花夕拾");
        Analyzer analyzer = new IKAnalyzer(false);
        StringReader reader = new StringReader(key);
        TokenStream ts = analyzer.tokenStream("", reader);
        CharTermAttribute term=ts.getAttribute(CharTermAttribute.class);
        while(ts.incrementToken()){
            System.out.print(term.toString()+"|");
        }
        analyzer.close();
        reader.close();
    }

}

