(()=>{function e(e,a){for(var t=0;t<a.length;t++){var l=a[t];l.enumerable=l.enumerable||!1,l.configurable=!0,"value"in l&&(l.writable=!0),Object.defineProperty(e,l.key,l)}}var a=function(){function a(){!function(e,a){if(!(e instanceof a))throw new TypeError("Cannot call a class as a function")}(this,a)}var t,l,n;return t=a,(l=[{key:"init",value:function(){$(document).on("click","#change_slug",(function(e){$(".default-slug").unwrap();var a=$("#editable-post-name");a.html('<input type="text" id="new-post-slug" class="form-control" value="'+a.text()+'" autocomplete="off">'),$("#edit-slug-box .cancel").show(),$("#edit-slug-box .save").show(),$(e.currentTarget).hide()})),$(document).on("click","#edit-slug-box .cancel",(function(){var e=$("#current-slug").val(),a=$("#sample-permalink");a.html('<a class="permalink" href="'+$("#slug_id").data("view")+e.replace("/","")+'">'+a.html()+"</a>"),$("#editable-post-name").text(e),$("#edit-slug-box .cancel").hide(),$("#edit-slug-box .save").hide(),$("#change_slug").show()}));var e=function(e,a,t){$.ajax({url:$("#slug_id").data("url"),type:"POST",data:{name:e,slug_id:a,model:$("input[name=model]").val()},success:function(e){var a=$("#sample-permalink"),l=$("#slug_id");t?a.find(".permalink").prop("href",l.data("view")+e.replace("/","")):a.html('<a class="permalink" target="_blank" href="'+l.data("view")+e.replace("/","")+'">'+a.html()+"</a>"),$(".page-url-seo p").text(l.data("view")+e.replace("/","")),$("#editable-post-name").text(e),$("#current-slug").val(e),$("#edit-slug-box .cancel").hide(),$("#edit-slug-box .save").hide(),$("#change_slug").show(),$("#edit-slug-box").removeClass("hidden")},error:function(e){Botble.handleError(e)}})};$(document).on("click","#edit-slug-box .save",(function(){var a=$("#new-post-slug"),t=a.val(),l=$("#slug_id").data("id");null==l&&(l=0),null!=t&&""!==t?e(t,l,!1):a.closest(".form-group").addClass("has-error")})),$(document).on("blur","#name",(function(a){if($("#edit-slug-box").hasClass("hidden")){var t=$(a.currentTarget).val();null!==t&&""!==t&&e(t,0,!0)}}))}}])&&e(t.prototype,l),n&&e(t,n),Object.defineProperty(t,"prototype",{writable:!1}),a}();$((function(){(new a).init()}))})();