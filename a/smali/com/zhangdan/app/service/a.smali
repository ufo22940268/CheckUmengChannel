.class final Lcom/zhangdan/app/service/a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/service/DownloadDataService;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/service/DownloadDataService;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/service/a;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/service/a;->b:Z

    return-void
.end method

.method public final b()V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v1, "com.zhangdan.app.download_data_start"

    invoke-static {v0, v1, v8}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/DownloadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/zhangdan/app/b/k;

    iget-object v5, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v5}, Lcom/zhangdan/app/service/DownloadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3, v1}, Lcom/zhangdan/app/b/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-boolean v5, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "msg"

    const-string v7, "\u6b63\u5728\u83b7\u53d6[\u94f6\u884c]\u6570\u636e"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progress"

    const/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v7, "com.zhangdan.app.download_progress"

    invoke-static {v6, v7, v5}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v5, "com.zhangdan.app.bank_changed"

    invoke-static {v1, v5, v8}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    move v1, v2

    :cond_2
    iget-boolean v5, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "msg"

    const-string v7, "\u6b63\u5728\u83b7\u53d6[\u8d26\u5355\u7ebf]\u6570\u636e"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progress"

    const/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v7, "com.zhangdan.app.download_progress"

    invoke-static {v6, v7, v5}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    :cond_3
    iget-boolean v5, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "msg"

    const-string v7, "\u6b63\u5728\u83b7\u53d6[\u4fe1\u7528\u5361]\u6570\u636e"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progress"

    const/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v7, "com.zhangdan.app.download_progress"

    invoke-static {v6, v7, v5}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->d()V

    iget-boolean v5, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "msg"

    const-string v7, "\u6b63\u5728\u83b7\u53d6[\u8d26\u5355]\u6570\u636e"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progress"

    const/16 v7, 0x1194

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v7, "com.zhangdan.app.download_progress"

    invoke-static {v6, v7, v5}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v2}, Lcom/zhangdan/app/b/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    iget-boolean v5, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "msg"

    const-string v7, "\u6b63\u5728\u83b7\u53d6[\u8fd8\u6b3e\u8bb0\u5f55]\u6570\u636e"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progress"

    const/16 v7, 0x1388

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v7, "com.zhangdan.app.download_progress"

    invoke-static {v6, v7, v5}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    iget-boolean v5, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "msg"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progress"

    const/16 v7, 0x157c

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v7, "com.zhangdan.app.download_progress"

    invoke-static {v6, v7, v5}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->h()V

    iget-object v5, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v6, "com.zhangdan.app.mail_account_update"

    invoke-static {v5, v6, v8}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-boolean v5, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "msg"

    const-string v7, "\u6b63\u5728\u83b7\u53d6[\u7c7b\u522b]\u6570\u636e"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progress"

    const/16 v7, 0x1770

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v7, "com.zhangdan.app.download_progress"

    invoke-static {v6, v7, v5}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->b()V

    iget-boolean v5, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "msg"

    const-string v7, "\u6b63\u5728\u83b7\u53d6[\u5237\u5361\u8bb0\u5f55]\u6570\u636e"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progress"

    const/16 v7, 0x1d4c

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v7, "com.zhangdan.app.download_progress"

    invoke-static {v6, v7, v5}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v2}, Lcom/zhangdan/app/b/k;->b(I)V

    iget-boolean v2, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "msg"

    const-string v6, "\u6b63\u5728\u83b7\u53d6[\u6d88\u8d39\u5907\u6ce8]\u6570\u636e"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "progress"

    const/16 v6, 0x1f40

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v6, "com.zhangdan.app.download_progress"

    invoke-static {v5, v6, v2}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->c()V

    iget-boolean v2, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "msg"

    const-string v6, "\u6b63\u5728\u83b7\u53d6[\u94f6\u884c\u9644\u5c5e\u4fe1\u606f]\u6570\u636e"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "progress"

    const/16 v6, 0x2134

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v6, "com.zhangdan.app.download_progress"

    invoke-static {v5, v6, v2}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->f()V

    iget-boolean v2, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "msg"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "progress"

    const/16 v6, 0x2328

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v6, "com.zhangdan.app.download_progress"

    invoke-static {v5, v6, v2}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->j()V

    iget-boolean v2, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "msg"

    const-string v6, "\u6b63\u5728\u83b7\u53d6[\u5206\u671f\u8bb0\u5f55]\u6570\u636e"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "progress"

    const/16 v6, 0x2648

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v6, "com.zhangdan.app.download_progress"

    invoke-static {v5, v6, v2}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/b/k;->i()V

    iget-boolean v2, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->a()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v2}, Lcom/zhangdan/app/service/DownloadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/zhangdan/app/service/a;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "new_user_bank"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    const-string v2, "com.zhangdan.app.download_data_end"

    invoke-static {v1, v2, v0}, Lcom/zhangdan/app/service/DownloadDataService;->a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/zhangdan/app/service/a;->a:Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v2}, Lcom/zhangdan/app/service/DownloadDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
