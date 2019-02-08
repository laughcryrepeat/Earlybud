<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
    <div id="content" class="site-content">

      <div class="container">
        <div class="row">
          <div id="primary" class="content-area layout-default col-lg-8">
            <main id="main" class="site-main">


              <article id="post-1" class="post-1 post type-post status-publish format-standard hentry category-uncategorized">


                <header class="entry-header">
                  <span class="posted-on">EarlyBud</span>
                  <h1 class="entry-title">프로젝트 올리기</h1>
                </header><!-- .entry-header -->

                <div id="respond" class="comment-respond">
                  <form action="https://demo.athemes.com/airi-shop/wp-comments-post.php" method="post" id="commentform" class="comment-form" novalidate>
                    <p class="comment-form-comment"><label for="comment">프로젝트 카테고리<span class="required">*</span></label> <input id="comment" name="comment" type="text" value="" size="30" maxlength="245" required='required' /></p>
                    <p class="comment-form-author"><label for="author">프로젝트 제목<span class="required">*</span></label> <input id="author" name="author" type="text" value="" size="30" maxlength="245" required='required' /></p>
                    <p class="comment-form-email"><label for="email">프로젝트 대표이미지<span class="required">*</span></label><input name="submit" type="file" id="submit" class="file" value="file" required="required"></p>
                    <p class="comment-form-url">
                	    <span>
                        <label for="startDate1">시작일<span class="required">*</span></label>
                          <input class = "dateC" type="text" id="startDate1" name="startDate" required='required'/>
                      </span>
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      <span>
                        <label for="endDate1">마감일<span class="required">*</span></label>
                          <input class = "dateC" type="text" id="endDate1" name="endDate" required='required'/>
                      </span>
                     </p>
                    <section id="categories-2" class="widget widget_categories">
                      <ul>
                        <li class="cat-item cat-item-1"><a href="newprojectDetail2"> 다음 페이지 </a>
                        </li>
                      </ul>
                    </section>
                    <p style="display: none;"><input type="hidden" id="akismet_comment_nonce" name="akismet_comment_nonce" value="b0c1d8b81d" /></p>
                    <p style="display: none;"><input type="hidden" id="ak_js" name="ak_js" value="63" /></p>
                  </form>

                </div><!-- #respond -->

          </div><!-- #comments -->

          </main><!-- #main -->
        </div><!-- #primary -->
<%@include file="footer.jsp" %>