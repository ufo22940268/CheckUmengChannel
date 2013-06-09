.class final Lcom/zhangdan/preferential/o;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/MainMapActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/o;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/o;-><init>(Lcom/zhangdan/preferential/MainMapActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v8, 0x1

    const-wide v6, 0x412e848000000000L

    check-cast p1, [Ljava/lang/Integer;

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getMapCenter()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/zhangdan/preferential/o;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->b(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/a/f;

    iget-object v2, p0, Lcom/zhangdan/preferential/o;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->b(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/o;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/MainMapActivity;->c(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/a/o;

    new-instance v3, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/zhangdan/preferential/data/model/Position;->a:D

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/zhangdan/preferential/data/model/Position;->b:D

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v4, 0x835

    invoke-direct {v0, v4}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    if-eq v1, v8, :cond_0

    const-string v4, "typeId"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "pageNo"

    invoke-virtual {v0, v1, v8}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/zhangdan/preferential/data/model/d;->a(Lcom/zhangdan/preferential/data/model/Position;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/o;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/MainMapActivity;->b()V

    iget-object v0, p0, Lcom/zhangdan/preferential/o;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v0, p1}, Lcom/zhangdan/preferential/MainMapActivity;->a(Lcom/zhangdan/preferential/MainMapActivity;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/o;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->d(Lcom/zhangdan/preferential/MainMapActivity;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/o;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/MainMapActivity;->a()V

    return-void
.end method
