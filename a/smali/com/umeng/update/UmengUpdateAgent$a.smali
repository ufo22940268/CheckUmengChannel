.class Lcom/umeng/update/UmengUpdateAgent$a;
.super Landroid/os/AsyncTask;
.source "UmengUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/update/UmengUpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/umeng/update/UpdateResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/umeng/update/UpdateResponse;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 323
    :try_start_0
    new-instance v3, Lcom/umeng/update/g;

    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->c()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/umeng/update/g;-><init>(Landroid/content/Context;Z)V

    move v2, v0

    .line 326
    :goto_0
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 327
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lcom/umeng/update/g;->a(Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/umeng/common/net/r;

    invoke-direct {v0}, Lcom/umeng/common/net/r;-><init>()V

    const-class v4, Lcom/umeng/update/UpdateResponse;

    invoke-virtual {v0, v3, v4}, Lcom/umeng/common/net/r;->a(Lcom/umeng/common/net/s;Ljava/lang/Class;)Lcom/umeng/common/net/t;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/UpdateResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    if-eqz v0, :cond_0

    .line 337
    :goto_1
    return-object v0

    .line 326
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    .line 335
    sget-object v2, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    const-string v3, "reques update error"

    invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    move-object v0, v1

    .line 337
    goto :goto_1
.end method

.method protected a(Lcom/umeng/update/UpdateResponse;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 342
    if-nez p1, :cond_0

    .line 343
    const/4 v0, 0x3

    invoke-static {v0, v3}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    .line 360
    :goto_0
    return-void

    .line 348
    :cond_0
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/umeng/update/UpdateResponse;->hasUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-boolean v0, p1, Lcom/umeng/update/UpdateResponse;->hasUpdate:Z

    if-eqz v0, :cond_1

    .line 350
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    .line 352
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Ljava/lang/String;

    .line 353
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->patch_md5:Ljava/lang/String;

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->d:Ljava/lang/String;

    .line 355
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    goto :goto_0

    .line 358
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0, v3}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 318
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/update/UmengUpdateAgent$a;->a([Ljava/lang/Void;)Lcom/umeng/update/UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    check-cast p1, Lcom/umeng/update/UpdateResponse;

    invoke-virtual {p0, p1}, Lcom/umeng/update/UmengUpdateAgent$a;->a(Lcom/umeng/update/UpdateResponse;)V

    return-void
.end method
