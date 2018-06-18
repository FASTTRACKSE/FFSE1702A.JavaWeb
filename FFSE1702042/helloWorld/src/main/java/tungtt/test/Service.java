package tungtt.test;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name = "helloService")
@SessionScoped
public class Service {
  public String convert(String input) {
    return "Hello: " + input.toUpperCase()+"!";
  }
}
