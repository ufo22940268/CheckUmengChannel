.class public final Lcom/zhangdan/preferential/a/aa;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/preferential/a/aa;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zhangdan/preferential/a/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zhangdan/preferential/a/a;->a(Landroid/content/Context;)Lcom/weibo/sdk/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weibo/sdk/android/a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/weibo/sdk/android/a;->b()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/zhangdan/preferential/data/model/o;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/o;-><init>()V

    iget-object v3, p0, Lcom/zhangdan/preferential/a/aa;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "name"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zhangdan/preferential/data/model/o;->a:Ljava/lang/String;

    const-string v3, "protraitUrl"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zhangdan/preferential/data/model/o;->b:Ljava/lang/String;

    const-string v3, "youhui_uid"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zhangdan/preferential/data/model/o;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/zhangdan/preferential/data/model/o;->c:Ljava/lang/String;

    goto :goto_2
.end method
