.class public final Lsdk/b/a/a/e/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "open"

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/sdk/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->d:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/h;->J:Ljava/lang/String;

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->b:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/h;->I:Ljava/lang/String;

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->c:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/h;->G:Ljava/lang/String;

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->h:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/h;->K:Ljava/lang/String;

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->a:Ljava/lang/String;

    const-string v0, "ANDROID"

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->i:Ljava/lang/String;

    const-string v0, "MDP"

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->j:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/h;->g:Ljava/lang/String;

    iput-object v0, p0, Lsdk/b/a/a/e/b/a/a;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsdk/b/a/a/e/b/a/a;->k:J

    return-void
.end method
