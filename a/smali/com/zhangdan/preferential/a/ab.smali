.class public final Lcom/zhangdan/preferential/a/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/weibo/sdk/android/e;

.field private b:Landroid/content/Context;

.field private c:Lcom/zhangdan/preferential/a/aa;

.field private d:Lcom/zhangdan/preferential/a/o;

.field private e:Lcom/zhangdan/preferential/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4101037885"

    const-string v1, "http://www.51zhangdan.com/service/user/sinalogin.ashx"

    invoke-static {v0, v1}, Lcom/weibo/sdk/android/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/a/ab;->a:Lcom/weibo/sdk/android/e;

    iput-object p1, p0, Lcom/zhangdan/preferential/a/ab;->b:Landroid/content/Context;

    new-instance v0, Lcom/zhangdan/preferential/a/aa;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/a/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/ab;->c:Lcom/zhangdan/preferential/a/aa;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/ab;->d:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/ab;->e:Lcom/zhangdan/preferential/a/f;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/a/ab;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/ab;->e:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/a/ab;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/ab;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/preferential/a/ab;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/zhangdan/app/data/db/b/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    new-instance v3, Lcom/zhangdan/preferential/data/model/a;

    invoke-direct {v3, v0}, Lcom/zhangdan/preferential/data/model/a;-><init>(Lcom/zhangdan/app/data/model/j;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/ab;->d:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x238f

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    const-string v1, "shopId"

    invoke-virtual {v0, v1, p1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/a/ac;

    const v2, 0x7f0801e7

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/a/ac;-><init>(Lcom/zhangdan/preferential/a/ab;I)V

    new-array v2, v4, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/a/ac;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v4
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/ab;->d:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x238f

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    const-string v1, "shopId"

    invoke-virtual {v0, v1, p1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/a/ac;

    const v2, 0x7f0801e8

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/a/ac;-><init>(Lcom/zhangdan/preferential/a/ab;I)V

    new-array v2, v4, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/a/ac;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v4
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/ab;->d:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x238d

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    const-string v1, "discountId"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "Activity"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/a/ac;

    const v2, 0x7f0801e7

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/a/ac;-><init>(Lcom/zhangdan/preferential/a/ab;I)V

    new-array v2, v4, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/a/ac;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v4
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/ab;->d:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x238d

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    const-string v1, "discountId"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/a/ac;

    const v2, 0x7f0801e8

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/a/ac;-><init>(Lcom/zhangdan/preferential/a/ab;I)V

    new-array v2, v4, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/a/ac;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v4
.end method
