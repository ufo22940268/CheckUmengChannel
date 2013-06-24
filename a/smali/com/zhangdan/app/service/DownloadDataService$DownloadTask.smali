.class Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/service/DownloadDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation


# instance fields
.field private flag:Z

.field final synthetic this$0:Lcom/zhangdan/app/service/DownloadDataService;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/service/DownloadDataService;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 79
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_data_start"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v10}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v8}, Lcom/zhangdan/app/service/DownloadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 82
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v7

    .line 83
    .local v7, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-nez v7, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, userId:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, token:Ljava/lang/String;
    new-instance v3, Lcom/zhangdan/app/api/DataDownloadMagager;

    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v8}, Lcom/zhangdan/app/service/DownloadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8, v6, v5}, Lcom/zhangdan/app/api/DataDownloadMagager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v3, downloadMgr:Lcom/zhangdan/app/api/DataDownloadMagager;
    const/4 v4, 0x0

    .line 91
    .local v4, hasNewData:Z
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v1, data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u94f6\u884c]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v8, "progress"

    const/16 v9, 0x3e8

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getBankList()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 99
    const/4 v4, 0x1

    .line 100
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.bank_changed"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v10}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    :cond_2
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 106
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u8d26\u5355\u7ebf]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v8, "progress"

    const/16 v9, 0x7d0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getUserBankList()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 111
    const/4 v4, 0x1

    .line 113
    :cond_3
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 116
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u4fe1\u7528\u5361]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v8, "progress"

    const/16 v9, 0xbb8

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getUserCardList()V

    .line 122
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 125
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 126
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u8d26\u5355]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v8, "progress"

    const/16 v9, 0x1194

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {v3, v11}, Lcom/zhangdan/app/api/DataDownloadMagager;->getBillList(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 130
    const/4 v4, 0x1

    .line 132
    :cond_4
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 135
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u8fd8\u6b3e\u8bb0\u5f55]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v8, "progress"

    const/16 v9, 0x1388

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getBillReturnList()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 140
    const/4 v4, 0x1

    .line 142
    :cond_5
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 145
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 147
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v8, "progress"

    const/16 v9, 0x157c

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getUserMailAccount()V

    .line 153
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.mail_account_update"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v10}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 158
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u7c7b\u522b]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v8, "progress"

    const/16 v9, 0x1770

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getShoppingCategoryList()V

    .line 164
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 167
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u5237\u5361\u8bb0\u5f55]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v8, "progress"

    const/16 v9, 0x1d4c

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {v3, v11}, Lcom/zhangdan/app/api/DataDownloadMagager;->getShoppingSheetList(I)V

    .line 173
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 176
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 177
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u6d88\u8d39\u5907\u6ce8]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v8, "progress"

    const/16 v9, 0x1f40

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getShoppingSheetRemarkList()V

    .line 182
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 185
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 186
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u94f6\u884c\u9644\u5c5e\u4fe1\u606f]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v8, "progress"

    const/16 v9, 0x2134

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getBankServiceList()V

    .line 191
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 194
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 195
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v8, "progress"

    const/16 v9, 0x2328

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getUserStatisticData()V

    .line 203
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 207
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 208
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "msg"

    const-string v9, "\u6b63\u5728\u83b7\u53d6[\u5206\u671f\u8bb0\u5f55]\u6570\u636e"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v8, "progress"

    const/16 v9, 0x2648

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_progress"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {v3}, Lcom/zhangdan/app/api/DataDownloadMagager;->getBillStageList()V

    .line 216
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v2

    .line 221
    .local v2, dataManager:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v2}, Lcom/zhangdan/app/global/DataManager;->isLoadDataDone()Z

    move-result v8

    if-nez v8, :cond_7

    .line 222
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v8}, Lcom/zhangdan/app/service/DownloadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8, v6}, Lcom/zhangdan/app/global/DataManager;->initData(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    :cond_6
    :goto_1
    iget-boolean v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    if-nez v8, :cond_0

    .line 233
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 234
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v8, "new_user_bank"

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v9, "com.zhangdan.app.download_data_end"

    #calls: Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v8, v9, v1}, Lcom/zhangdan/app/service/DownloadDataService;->access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 225
    :cond_7
    if-eqz v4, :cond_6

    .line 226
    iget-object v8, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->this$0:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v8}, Lcom/zhangdan/app/service/DownloadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8, v6}, Lcom/zhangdan/app/global/DataManager;->initData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->flag:Z

    .line 76
    return-void
.end method
