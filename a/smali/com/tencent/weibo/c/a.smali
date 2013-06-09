.class public final Lcom/tencent/weibo/c/a;
.super Lcom/tencent/weibo/a/a;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/weibo/a/a;-><init>()V

    const-string v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->m:Ljava/lang/String;

    const-string v0, "HMAC-SHA1"

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->s:Ljava/lang/String;

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/tencent/weibo/c/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weibo/c/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/c/a;->s:Ljava/lang/String;

    return-void
.end method
