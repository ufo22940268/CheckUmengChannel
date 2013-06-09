.class public final Lsdk/b/a/a/e/b/d/a;
.super Lsdk/b/a/a/e/b/c;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lsdk/b/a/a/e/b/c;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lsdk/b/a/a/e/b/d/a;->a:Z

    iput-boolean v0, p0, Lsdk/b/a/a/e/b/d/a;->b:Z

    iget-boolean v0, p0, Lsdk/b/a/a/e/b/d/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lsdk/c/a/b/g;->a([B)[B

    move-result-object p2

    :cond_0
    iget-boolean v0, p0, Lsdk/b/a/a/e/b/d/a;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/c/a/b/d;->b()[B

    move-result-object v0

    invoke-static {p2, v0}, Lsdk/c/a/a/a;->a([B[B)[B

    move-result-object p2

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Key"

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lsdk/c/a/b/d;->a()[B

    move-result-object v3

    invoke-static {v3}, Lsdk/c/a/b/g;->c([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isCompressed"

    iget-boolean v2, p0, Lsdk/b/a/a/e/b/d/a;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isEncrypted"

    iget-boolean v2, p0, Lsdk/b/a/a/e/b/d/a;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "logData"

    new-instance v2, Ljava/lang/String;

    invoke-static {p2}, Lsdk/c/a/b/g;->c([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lsdk/b/a/a/e/b/d/a;->b([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
