.class public Lcom/umeng/a/b/e;
.super Lcom/umeng/common/net/w;


# instance fields
.field public a:Lorg/json/JSONObject;

.field b:Z

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/umeng/common/net/w;-><init>(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/b/e;->a:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/a/b/e;->b:Z

    iput v1, p0, Lcom/umeng/a/b/e;->c:I

    iput v1, p0, Lcom/umeng/a/b/e;->d:I

    const-string v0, "config_update"

    iput-object v0, p0, Lcom/umeng/a/b/e;->f:Ljava/lang/String;

    const-string v0, "report_policy"

    iput-object v0, p0, Lcom/umeng/a/b/e;->g:Ljava/lang/String;

    const-string v0, "online_params"

    iput-object v0, p0, Lcom/umeng/a/b/e;->h:Ljava/lang/String;

    const-string v0, "last_config_time"

    iput-object v0, p0, Lcom/umeng/a/b/e;->i:Ljava/lang/String;

    const-string v0, "report_interval"

    iput-object v0, p0, Lcom/umeng/a/b/e;->j:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "config_update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "config_update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    :goto_1
    iget v0, p0, Lcom/umeng/a/b/e;->c:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/umeng/a/b/e;->c:I

    if-le v0, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/umeng/a/b/e;->c:I

    :cond_4
    iget v0, p0, Lcom/umeng/a/b/e;->c:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/umeng/a/b/e;->d:I

    if-gtz v0, :cond_0

    sget v0, Lcom/umeng/a/j;->c:I

    iput v0, p0, Lcom/umeng/a/b/e;->d:I

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v0, "report_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "report_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/a/b/e;->c:I

    const-string v0, "report_interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/umeng/a/b/e;->d:I

    const-string v0, "last_config_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/b/e;->e:Ljava/lang/String;

    :goto_2
    const-string v0, "online_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/b/e;->a:Lorg/json/JSONObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/a/b/e;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "fail to parce online config response"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_6
    :try_start_2
    const-string v0, "MobclickAgent"

    const-string v1, " online config fetch no report policy"

    invoke-static {v0, v1}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
