package fasttrackse.jspcrud.entity;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped

public class Pagination {
    int records =3;
    int recordsTotal;
    int pageIndex =1;
    int pages;
    
}
