.class public Lcom/umeng/update/e;
.super Lcom/umeng/common/net/r;
.source "UpdateClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/umeng/update/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/umeng/common/net/r;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/umeng/update/e;->a:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 32
    sget-object v0, Lcom/umeng/update/e;->b:Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/util/DeltaUpdate;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v4, Lcom/umeng/update/g;

    iget-object v0, p0, Lcom/umeng/update/e;->a:Landroid/content/Context;

    invoke-static {}, Lcom/umeng/common/util/DeltaUpdate;->a()Z

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/umeng/update/g;-><init>(Landroid/content/Context;Z)V

    move v1, v2

    move-object v0, v3

    .line 36
    :goto_0
    sget-object v5, Lcom/umeng/update/UmengUpdateAgent;->f:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 37
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Lcom/umeng/update/g;->a(Ljava/lang/String;)V

    .line 38
    const-class v0, Lcom/umeng/update/UpdateResponse;

    invoke-virtual {p0, v4, v0}, Lcom/umeng/update/e;->a(Lcom/umeng/common/net/s;Ljava/lang/Class;)Lcom/umeng/common/net/t;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    .line 39
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 44
    :goto_1
    if-nez v1, :cond_2

    .line 45
    const/4 v0, 0x3

    invoke-static {v0, v3}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    .line 71
    :cond_0
    :goto_2
    return-void

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_2
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/umeng/update/UpdateResponse;->hasUpdate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-boolean v0, v1, Lcom/umeng/update/UpdateResponse;->hasUpdate:Z

    if-eqz v0, :cond_3

    .line 52
    invoke-static {v2, v1}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    .line 54
    iget-object v0, v1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Ljava/lang/String;

    .line 55
    iget-object v0, v1, Lcom/umeng/update/UpdateResponse;->patch_md5:Ljava/lang/String;

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->d:Ljava/lang/String;

    .line 57
    sget-boolean v0, Lcom/umeng/update/UmengUpdateAgent;->a:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/umeng/update/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/umeng/update/f;

    invoke-direct {v2, p0, v1}, Lcom/umeng/update/f;-><init>(Lcom/umeng/update/e;Lcom/umeng/update/UpdateResponse;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 69
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0, v3}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 20
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/update/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    .line 23
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    const-string v2, "reques update error"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
