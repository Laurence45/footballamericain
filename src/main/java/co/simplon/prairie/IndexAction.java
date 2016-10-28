package co.simplon.prairie;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.MadvocAction;
import jodd.madvoc.meta.Out;

import java.util.List;

@MadvocAction
public class IndexAction {

    @Out
    String prenom;

    @Action("/")
    public String view() {
        prenom = "Laurence";
        return "/index";
    }
}
