.class public final Lcom/baidu/location/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/baidu/location/b;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:D

.field private f:D

.field private g:Z

.field private h:D

.field private i:Z

.field private j:F

.field private k:Z

.field private l:F

.field private m:Z

.field private n:I

.field private o:F

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/a;->c:I

    iput-object v2, p0, Lcom/baidu/location/a;->d:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/a;->e:D

    iput-wide v3, p0, Lcom/baidu/location/a;->f:D

    iput-boolean v1, p0, Lcom/baidu/location/a;->g:Z

    iput-wide v3, p0, Lcom/baidu/location/a;->h:D

    iput-boolean v1, p0, Lcom/baidu/location/a;->i:Z

    iput v0, p0, Lcom/baidu/location/a;->j:F

    iput-boolean v1, p0, Lcom/baidu/location/a;->k:Z

    iput v0, p0, Lcom/baidu/location/a;->l:F

    iput-boolean v1, p0, Lcom/baidu/location/a;->m:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/a;->n:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/a;->o:F

    iput-object v2, p0, Lcom/baidu/location/a;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/a;->q:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/a;->r:Z

    iput-boolean v1, p0, Lcom/baidu/location/a;->s:Z

    iput-object v2, p0, Lcom/baidu/location/a;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/a;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/a;->u:Z

    new-instance v0, Lcom/baidu/location/b;

    invoke-direct {v0, p0}, Lcom/baidu/location/b;-><init>(Lcom/baidu/location/a;)V

    iput-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/baidu/location/a;->c:I

    iput-object v1, p0, Lcom/baidu/location/a;->d:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/a;->e:D

    iput-wide v2, p0, Lcom/baidu/location/a;->f:D

    iput-boolean v4, p0, Lcom/baidu/location/a;->g:Z

    iput-wide v2, p0, Lcom/baidu/location/a;->h:D

    iput-boolean v4, p0, Lcom/baidu/location/a;->i:Z

    iput v0, p0, Lcom/baidu/location/a;->j:F

    iput-boolean v4, p0, Lcom/baidu/location/a;->k:Z

    iput v0, p0, Lcom/baidu/location/a;->l:F

    iput-boolean v4, p0, Lcom/baidu/location/a;->m:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/a;->n:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/a;->o:F

    iput-object v1, p0, Lcom/baidu/location/a;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a;->q:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/baidu/location/a;->r:Z

    iput-boolean v4, p0, Lcom/baidu/location/a;->s:Z

    iput-object v1, p0, Lcom/baidu/location/a;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a;->a:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/baidu/location/a;->u:Z

    new-instance v0, Lcom/baidu/location/b;

    invoke-direct {v0, p0}, Lcom/baidu/location/b;-><init>(Lcom/baidu/location/a;)V

    iput-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/location/a;->c:I

    const-string v3, "time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a;->d:Ljava/lang/String;

    const/16 v1, 0x3d

    if-ne v2, v1, :cond_2

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a;->e:D

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a;->f:D

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/location/a;->a(F)V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/baidu/location/a;->j:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/a;->i:Z

    const-string v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/baidu/location/a;->o:F

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/location/a;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput v4, p0, Lcom/baidu/location/a;->c:I

    iput-boolean v4, p0, Lcom/baidu/location/a;->r:Z

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa1

    if-ne v2, v1, :cond_9

    :try_start_1
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "point"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "y"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a;->e:D

    const-string v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a;->f:D

    const-string v0, "radius"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(F)V

    const-string v0, "addr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "addr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iput-object v0, v2, Lcom/baidu/location/b;->g:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/baidu/location/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->a:Ljava/lang/String;

    const-string v2, "\u5317\u4eac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->b:Ljava/lang/String;

    const-string v2, "\u5317\u4eac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->a:Ljava/lang/String;

    const-string v2, "\u4e0a\u6d77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->b:Ljava/lang/String;

    const-string v2, "\u4e0a\u6d77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->a:Ljava/lang/String;

    const-string v2, "\u5929\u6d25"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->b:Ljava/lang/String;

    const-string v2, "\u5929\u6d25"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->a:Ljava/lang/String;

    const-string v2, "\u91cd\u5e86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->b:Ljava/lang/String;

    const-string v2, "\u91cd\u5e86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v0, v0, Lcom/baidu/location/b;->a:Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v2, v2, Lcom/baidu/location/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v2, v2, Lcom/baidu/location/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v2, v2, Lcom/baidu/location/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iput-object v0, v2, Lcom/baidu/location/b;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a;->r:Z

    :goto_2
    const-string v0, "poi"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a;->s:Z

    const-string v0, "poi"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a;->q:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v2, v2, Lcom/baidu/location/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/a;->b:Lcom/baidu/location/b;

    iget-object v2, v2, Lcom/baidu/location/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a;->t:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a;->r:Z

    goto :goto_2

    :cond_9
    const/16 v1, 0x42

    if-eq v2, v1, :cond_a

    const/16 v1, 0x44

    if-ne v2, v1, :cond_0

    :cond_a
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a;->e:D

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a;->f:D

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/location/a;->a(F)V

    const-string v1, "isCellChanged"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/a;->u:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(F)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/a;->l:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a;->k:Z

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/a;->e:D

    return-wide v0
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/a;->f:D

    return-wide v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/a;->l:F

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/a;->c:I

    return v0
.end method
