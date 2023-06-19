

#' Title 预览数据
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples viewcategoryTypeTableserver()  
viewcategoryTypeTableserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_view_categoryTypeTable,
                        {
                            sql = 'select * from rds_hrv_ods_md_categoryTypeTable'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            #显示数据
                            tsui::run_dataTable2(id = 'view_data_categoryTypeTable', data = data)
                            
                            
                 
                          
                        })
    
  })
}



#' Title 后台处理总函数
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples HrvServer()
jhhrvcategoryTypeTableServer <- function(input,output,session,dms_token) {
  #预览数据
  viewcategoryTypeTableserver(input,output,session,dms_token)

}
