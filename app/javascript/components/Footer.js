import React from 'react';


const Footer = props => (
  <footer className="page-footer font-small blue pt-4 container">
    <div className="container-fluid text-center text-md-left">

      <div className="row">

        <hr className="clearfix w-100 d-md-none pb-3" />

        <div className="col-md-2 mb-md-0 mb-3">
            
            <h5 className="text-uppercase mb-30-min">关于夏云</h5>

            <ul className="list-unstyled">
              <li className="pb-10-min">
                <a href="#!">愿景</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">Why we</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">文化和多样性</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">工作机会</a>
              </li>
            </ul>

          </div>

          <div className="col-md-2 mb-md-0 mb-3">


            <h5 className="text-uppercase mb-30-min">创客吧</h5>

            <ul className="list-unstyled">
              <li className="pb-10-min">
                <a href="#!">怎么发起项目</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">项目推广</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">项目审核</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">平台规则</a>
              </li>
            </ul>

          </div>

          <div className="col-md-2 mb-md-0 mb-3">

            <h5 className="text-uppercase mb-30-min">资源</h5>

            <ul className="list-unstyled">
              <li className="pb-10-min">
                <a href="#!">博客</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">技术博客</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">媒体联系</a>
              </li>
            </ul>

          </div>

          <div className="col-md-2 mb-md-0 mb-3">

            <h5 className="text-uppercase mb-30-min">比较</h5>

            <ul className="list-unstyled">
              <li className="pb-10-min">
                <a href="#!">淘宝众筹</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">京东众筹</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">摩点网</a>
              </li>
              <li className="pb-10-min">
                <a href="#!">夏云</a>
              </li>
            </ul>

          </div>

          <div className="col-md-4 mt-md-0 mt-3">


            <h5 className="text-uppercase">Footer Content</h5>
            <p>Here you can use rows and columns here to organize your footer content.</p>

            <div className="mb-4">

              

            </div>


            <ul className="list-unstyled list-inline">
              <li className="list-inline-item">
                <a className="btn-floating btn-fb mx-1 " href="#!">
                  <i className="fab fa-weibo"> </i>
                </a>
              </li>
              <li className="list-inline-item">
                <a className="btn-floating btn-tw mx-1" href="#!">
                  <i className="fab fa-twitter"> </i>
                </a>
              </li>
             
              <li className="list-inline-item">
                <a className="btn-floating btn-dribbble mx-1" href="#!">
                  <i className="fab fa-dribbble"> </i>
                </a>
              </li>
            </ul>
           
            <div className="dropdown">
              <button type="button" className="btn btn-info dropdown-toggle" data-toggle="dropdown">
                切换语言
              </button>
              <div className="dropdown-menu">
                <a className="dropdown-item" href="#" >简体中文</a>
                <a className="dropdown-item" href="#">繁體中文</a>
                <a className="dropdown-item-text" href="#">English</a>
              </div>
            </div>

          </div>

      </div>

  </div>

     <div className="footer-copyright text-center py-3">© 2018 夏云科技 </div>
  
  </footer>
);


export default Footer;
