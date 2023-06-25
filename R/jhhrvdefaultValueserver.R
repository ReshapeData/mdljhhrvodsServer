

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
#' @examples viewdefaultValueserver()  
viewdefaultValueserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_hrv_ods_view_defaultValue,
                        {
                            sql = 'select * from rds_hrv_ods_tpl_defaultValue'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('凭证模版序号',
                                            '行号',
                                            '默认金额',
                                            '默认名称',
                                            '默认编码'
                                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'hrv_ods_view_data_defaultValue', data = data)
                            
                            
                 
                          
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
jhhrvdefaultValueServer <- function(input,output,session,dms_token) {
  #预览数据
  viewdefaultValueserver(input,output,session,dms_token)

}
