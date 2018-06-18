package tungtt.test;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class HelloWorld {
  @ManagedProperty(value = "#{helloService}")
  Service helloService;
  private String name;
  public String sayHello() {
    this.name = helloService.convert(this.name);
    return "home?faces-redirect=true";
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public Service getHelloService() {
    return helloService;
  }
  public void setHelloService(Service helloService) {
    this.helloService = helloService;
  }
}