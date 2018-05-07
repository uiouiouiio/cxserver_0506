#ifndef CONTROL_PACKET_HEAD_FILE
#define CONTROL_PACKET_HEAD_FILE

//////////////////////////////////////////////////////////////////////////////////

//事件结果
#define ER_FAILURE					0									//失败标志
#define ER_SUCCESS					1									//成功标志

//////////////////////////////////////////////////////////////////////////////////
//界面数据包

#define UI_CORRESPOND_RESULT		1									//登录结果
#define UI_LOAD_DB_LIST_RESULT		2									//列表成功

//////////////////////////////////////////////////////////////////////////////////
//控制数据包

#define CT_CONNECT_CORRESPOND		100									//连接登录
#define CT_LOAD_DB_GAME_LIST		101									//加载列表
#define CT_LOAD_CHECKIN_REWARD		102									//加载奖励

//约战服务器配置
#define CT_CONNECT_PERSONAL_ROOM_CORRESPOND		103						//连接约战服务器

//////////////////////////////////////////////////////////////////////////////////

//控制结果
struct CP_ControlResult
{
	BYTE							cbSuccess;							//成功标志
};

//////////////////////////////////////////////////////////////////////////////////

#endif