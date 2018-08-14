<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 
<div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-2">
            <h3 class="content-header-title mb-0">Form Basic Elements</h3>
            <div class="row breadcrumbs-top">
              <div class="breadcrumb-wrapper col-xs-12">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Home</a>
                  </li>
                  <li class="breadcrumb-item"><a href="#">Form</a>
                  </li>
                  <li class="breadcrumb-item active">Basic Elements
                  </li>
                </ol>
              </div>
            </div>
          </div>
          <div class="content-header-right col-md-6 col-xs-12">
            <div role="group" aria-label="Button group with nested dropdown" class="btn-group float-md-right">
              <div role="group" class="btn-group">
                <button id="btnGroupDrop1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-outline-primary dropdown-toggle dropdown-menu-right"><i class="ft-settings icon-left"></i> Settings</button>
                <div aria-labelledby="btnGroupDrop1" class="dropdown-menu"><a href="card-bootstrap.html" class="dropdown-item">Bootstrap Cards</a><a href="component-buttons-extended.html" class="dropdown-item">Buttons Extended</a></div>
              </div><a href="calendars-clndr.html" class="btn btn-outline-primary"><i class="ft-mail"></i></a><a href="timeline-center.html" class="btn btn-outline-primary"><i class="ft-pie-chart"></i></a>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Basic Elements start -->
<section class="basic-elements">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Basic Elements</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-xl-4 col-lg-6 col-md-12 mb-1">
                                <fieldset class="form-group">
                                    <label for="basicInput">Basic Input</label>
                                    <input type="text" class="form-control" id="basicInput" >
                                </fieldset>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12 mb-1">
                                <fieldset class="form-group">
                                    <label for="helpInputTop">Input text with help</label>
                                    <small class="text-muted">eg.<i>someone@example.com</i></small>
                                    <input type="text" class="form-control" id="helpInputTop">
                                </fieldset>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12 mb-1">
                                <fieldset class="form-group">
                                    <label for="disabledInput">Disabled Input</label>
                                    <input type="text" class="form-control" id="disabledInput" disabled>
                                </fieldset>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12 mb-1">
                                <fieldset class="form-group">
                                    <label for="disabledInput">Readonly Input</label>
                                    <input type="text" class="form-control" id="readonlyInput" readonly="readonly" value="You can't update me :P">
                                </fieldset>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12 mb-1">
                                <fieldset class="form-group">
                                    <label for="disabledInput">Input with Placeholder</label>
                                    <input type="email" class="form-control" id="placeholderInput" placeholder="Enter Email Address">
                                </fieldset>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12 mb-1">
                                <fieldset class="form-group">
                                    <label for="disabledInput">Static Text</label>
                                    <p class="form-control-static" id="staticInput">email@pixinvent.com</p>
                                </fieldset>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12 mb-1">
                                <fieldset class="form-group">
                                    <label for="roundText">Rounded Input</label>
                                    <input type="text" id="roundText" class="form-control round" placeholder="Rounded Input">
                                </fieldset>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12 mb-1">
                                <fieldset class="form-group">
                                    <label for="squareText">Square Input</label>
                                    <input type="text" id="squareText" class="form-control square" placeholder="square Input">
                                </fieldset>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12 mb-1">
                                <fieldset class="form-group">
                                    <label for="helperText">With Helper Text</label>
                                    <input type="text" id="helperText" class="form-control" placeholder="Name">
                                    <p><small class="text-muted">Find helper text here for given textbox.</small></p>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Basic Inputs end -->

<!-- Basic Textarea start -->
<section class="basic-textarea">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <label for="basicTextarea" class="card-title">Textarea</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-xl-4 col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="basicTextarea">Basic Textarea</label>
                                    <textarea class="form-control" id="basicTextarea" rows="3"></textarea>
                                </fieldset>                                
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="placeTextarea">Textarea with Placeholder</label>
                                    <textarea class="form-control" id="placeTextarea" rows="3" placeholder="Textarea with placeholder"></textarea>
                                </fieldset>                                
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="descTextarea">Textarea with Description</label>
                                    <textarea class="form-control" id="descTextarea" rows="3" placeholder="Textarea with description"></textarea>
                                </fieldset>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Basic Textarea end -->

<!-- Basic Select start -->
<section class="basic-select">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <label for="basicSelect" class="card-title">Select</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-xl-4 col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="basicSelect">Basic Select</label>
                                    <select class="form-control" id="basicSelect">
                                      <option>Select Option</option>
                                      <option>Option 1</option>
                                      <option>Option 2</option>
                                      <option>Option 3</option>
                                      <option>Option 4</option>
                                      <option>Option 5</option>
                                    </select>
                                </fieldset>                                
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="customSelect">Custom select</label>
                                    <select class="custom-select block" id="customSelect">
                                        <option selected>Open this select menu</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </fieldset>                                
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="countrySelect">Multiple select</label>
                                    <select class="form-control" id="countrySelect" multiple="multiple">
                                        <option selected="selected">United States</option>
                                        <option>Canada</option>
                                        <option selected="selected">United Kingdom</option>
                                        <option>Japan</option>
                                        <option>Australia</option>
                                        <option>Germany</option>
                                        <option selected="selected">India</option>
                                        <option>Italy</option>
                                        <option>Sweden</option>
                                        <option>France</option>
                                        <option>New Zealand</option>
                                        <option>Switzerland</option>
                                        <option>Russia</option>
                                        <option>England</option>
                                        <option>Norway</option>
                                        <option>Greece</option>
                                        <option>Philippines</option>
                                        <option>Ireland</option>
                                        <option>China</option>
                                        <option>South Korea</option>
                                    </select>
                                </fieldset>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Basic Select end -->

<!-- Basic File Browser start -->
<section class="file-browser">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title">File input</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="basicInputFile">Simple File Input</label>
                                    <input type="file" class="form-control-file" id="basicInputFile">
                                </fieldset>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <fieldset class="form-group">
                                    <label for="file">With Browse button</label>
                                    <label class="custom-file center-block block">
                                      <input type="file" id="file" class="custom-file-input">
                                      <span class="custom-file-control"></span>
                                    </label>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Basic File Browser end -->

<!-- Control Sizing start -->
<section class="control-sizing">
    <div class="row"> 
        <div class="col-xs-12 mt-3 mb-1">
            <h4 class="text-uppercase">Control Sizing Options</h4>
        </div>
    </div>
    <div class="row match-height">
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">XLarge Form Group</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <fieldset class="form-group form-group-xl">
                            <input type="text" class="form-control" placeholder="Using .form-group-xl class">
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Large Form Group</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <fieldset class="form-group form-group-lg">
                            <input type="text" class="form-control" placeholder="Using .form-group-lg class">
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Small Form Group</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <fieldset class="form-group form-group-sm">
                            <input type="text" class="form-control" placeholder="Using .form-group-sm class">
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">XSmall Form Group</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <fieldset class="form-group form-group-xs">
                            <input type="text" class="form-control" placeholder="Using .form-group-xs class">
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row match-height">
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="xLarge">Extra Large Input</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>XLarge Input class <code>.input-xl</code></p>
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control input-xl" id="xLarge" placeholder="XLarge Input">
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="xLargeSelect">Extra Large Select</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>XLarge Input class <code>.input-xl</code> for select</p>
                    <fieldset class="form-group position-relative">
                            <select class="form-control input-xl" id="xLargeSelect">
                                <option selected>XLarge select options</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="Large">Large Input</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>Large Input class <code>.input-lg</code></p>
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control input-lg" id="Large" placeholder="Large Input">
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="LargeSelect">Large Select</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>Large Input class <code>.input-lg</code> for select</p>
                    <fieldset class="form-group position-relative">
                            <select class="form-control input-lg" id="LargeSelect">
                                <option selected>Large select options</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="Default">Default Input</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control" id="Default" placeholder="Default Input">
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="DefaultSelect">Default Select</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative">
                            <select class="form-control" id="DefaultSelect">
                                <option selected>Default select options</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="Small">Small Input</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>Small Input class <code>.input-sm</code></p>
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control input-sm" id="Small" placeholder="Small Input">
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="SmallSelect">Small Select</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>Small Input class <code>.input-sm</code> for select</p>
                    <fieldset class="form-group position-relative">
                            <select class="form-control input-sm" id="SmallSelect">
                                <option selected>Small select options</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="xSmall">Extra Small Input</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>XSmall Input class <code>.input-xs</code></p>
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control input-xs" id="xSmall" placeholder="XSmall Input">
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="xSmallSelect">Extra Small Select</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>XSmall Input class <code>.input-xs</code> for select</p>
                    <fieldset class="form-group position-relative">
                            <select class="form-control input-xs" id="xSmallSelect">
                                <option selected>XSmall select options</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Control Sizing end -->

<!-- validations start -->
<section class="validations" id="validation">
    <div class="row"> 
        <div class="col-xs-12 mt-3 mb-1">
            <h4 class="text-uppercase">Input Validation States</h4>
        </div>
    </div>
    <div class="row match-height">
        <div class="col-xl-4 col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title danger" for="inputDanger"><strong>Danger State</strong></label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <fieldset class="form-group has-danger">
                            <input type="text" class="form-control form-control-danger" id="inputDanger">
                        <p class="text-xs-right"><small class="danger text-muted">Use<code>.has-danger</code> class for danger state</small></p>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title success" for="inputSuccess"><strong>Success State</strong></label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <fieldset class="form-group has-success">
                            <input type="text" class="form-control form-control-success" id="inputSuccess">
                        <p class="text-xs-right"><small class="success text-muted">Use<code>.has-success</code> class for success state</small></p>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title warning" for="inputWarning"><strong>Warning State</strong></label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <fieldset class="form-group has-warning">
                            <input type="text" class="form-control form-control-warning" id="inputWarning">
                        <p class="text-xs-right"><small class="warning text-muted">Use<code>.has-warning</code> class for warning state</small></p>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- validations end -->

<!-- Inputs Icons start -->
<section class="inputs-icons">
    <div class="row"> 
        <div class="col-xs-12 mt-3 mb-1">
            <h4 class="text-uppercase">Input with Icons</h4>
        </div>
    </div>
    <div class="row match-height">
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="iconLeft">Extra Large Input with Left Icon</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>Icon Left class <code>.has-icon-left</code>, XLarge Input class <code>.input-xl</code>&amp; <code>.font-medium-4</code> class for XLarge Icon </p>
                    <fieldset class="form-group position-relative has-icon-left">
                            <input type="text" class="form-control form-control-xl input-xl" id="iconLeft" placeholder="Icon Left, Extra Large Input">
                            <div class="form-control-position">
                            <i class="ft-droplet success font-medium-4"></i>
                            </div>
                        <small>Icon Left class <code>.has-icon-left</code>, XLarge Input class <code>.input-xl</code>&amp; <code>.font-medium-4</code> class for XLarge Icon </small>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="iconLeft1">Extra Large Input with Right Icon</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>XLarge Input class <code>.input-xl</code>&amp; <code>.font-medium-4</code> class for XLarge Icon</p>
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control form-control-xl input-xl" id="iconLeft1" placeholder="Icon Right, Extra Large Input">
                            <div class="form-control-position">
                            <i class="ft-mic danger font-medium-4"></i>
                            </div>
                        <small>XLarge Input class <code>.input-xl</code>&amp; <code>.font-medium-4</code> class for XLarge Icon</small>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="iconLeft2">Large Input with Left Icon</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>Icon Left class <code>.has-icon-left</code>, Large Input class <code>.input-lg</code>&amp; <code>.font-medium-4</code> class for Large Icon </p>
                    <fieldset class="form-group position-relative has-icon-left">
                            <input type="text" class="form-control form-control-lg input-lg" id="iconLeft2" placeholder="Icon Left, Large Input">
                            <div class="form-control-position">
                            <i class="ft-unlock warning font-medium-4"></i>
                            </div>
                        <small>Icon Left class <code>.has-icon-left</code>, Large Input class <code>.input-lg</code>&amp; <code>.font-medium-4</code> class for Large Icon </small>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="iconLeft3">Large Input with Right Icon</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                        <p>Large Input class <code>.input-lg</code>&amp; <code>.font-medium-4</code> class for Large Icon </p>
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control form-control-lg input-lg" id="iconLeft3" placeholder="Icon Right, Large Input">
                            <div class="form-control-position">
                            <i class="ft-feather info font-medium-4"></i>
                            </div>
                        <small>Large Input class <code>.input-lg</code>&amp; <code>.font-medium-4</code> class for Large Icon </small>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="iconLeft4">Default Input with Left Icon</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative has-icon-left">
                            <input type="text" class="form-control" id="iconLeft4" placeholder="Icon Left, Default Input">
                            <div class="form-control-position">
                                <i class="ft-phone primary"></i>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <label class="card-title" for="iconLeft5">Default Input with Right Icon</label>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control" id="iconLeft5" placeholder="Icon Right, Default Input">
                            <div class="form-control-position">
                                <i class="ft-file warning"></i>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Small Input with Left Icon</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative has-icon-left">
                            <input type="text" class="form-control form-control-sm input-sm" id="iconLeft6" placeholder="Icon Left, Small Input">
                            <div class="form-control-position">
                            <i class="ft-search danger font-small-4"></i>
                            </div>
                        <small>Icon Left class <code>.has-icon-left</code>, Small Input class <code>.input-sm</code>&amp; <code>.font-small-4</code> class for Small Icon </small>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Small Input with Right Icon</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control form-control-sm input-sm" id="iconLeft7" placeholder="Icon Right, Small Input">
                            <div class="form-control-position">
                            <i class="ft-bell success font-small-4"></i>
                            </div>
                        <small>Small Input class <code>.input-sm</code>&amp; <code>.font-small-4</code> class for Small Icon </small>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Extra Small Input with Left Icon</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative has-icon-left">
                            <input type="text" class="form-control form-control-xs input-xs" id="iconLeft8" placeholder="Icon Left, Extra Small Input">
                            <div class="form-control-position">
                            <i class="ft-bar-chart info font-small-2"></i>
                            </div>
                        <small>Icon Left class <code>.has-icon-left</code>, XSmall Input class <code>.input-xs</code>&amp; <code>.font-small-2</code> class for XSmall Icon </small>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Extra Small Input with Right Icon</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control form-control-xs input-xs" id="iconLeft9" placeholder="Icon Right, Extra Small Input">
                            <div class="form-control-position">
                            <i class="ft-upload warning font-small-2"></i>
                            </div>
                        <small>XSmall Input class <code>.input-xs</code>&amp; <code>.font-small-2</code> class for XSmall Icon </small>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Round Input with Icon</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative has-icon-left">
                            <input type="text" class="form-control round" id="iconLeft10" placeholder="Icon Left, Default Input">
                            <div class="form-control-position">
                                <i class="ft-user warning"></i>
                            </div>
                            <p>Use class <code>.has-icon-left</code> class for Left Icon.</p>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Round Input with Right Spin Icon</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control round" id="iconLeft11" placeholder="Icon Right, Default Input">
                            <div class="form-control-position">
                                <i class="ft-bell primary"></i>
                            </div>
                            <p>Default right icon. No classes needed.</p>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Default Input with Spin Icon</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative has-icon-left">
                            <input type="text" class="form-control" id="iconLeft12" placeholder="Icon Left, Default Input">
                            <div class="form-control-position">
                                <i class="ft-loader spinner"></i>
                            </div>
                            <p>Icon Left class <code>.has-icon-left</code> &amp; <code>.spinner</code> class to spin the Icon </p>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Default Input with Right Spin Icon</h4>
                </div>
                <div class="card-body">
                    <div class="card-block">
                    <fieldset class="form-group position-relative">
                            <input type="text" class="form-control" id="iconLeft13" placeholder="Icon Right, Default Input">
                            <div class="form-control-position">
                                <i class="spinner ft-refresh-cw"></i>
                            </div>
                            <p><code>.spinner</code> class to spin the Icon</p>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Inputs Icons end -->
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->


<jsp:include page="/WEB-INF/view/templates/footer.jsp" /> 