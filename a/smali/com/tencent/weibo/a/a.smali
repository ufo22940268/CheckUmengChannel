.class public Lcom/tencent/weibo/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/weibo/a/a;->a:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/tencent/weibo/a/a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/a/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/a/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/a/a;->e:Ljava/lang/String;

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/tencent/weibo/a/a;->f:Ljava/lang/String;

    const-string v0, "all"

    iput-object v0, p0, Lcom/tencent/weibo/a/a;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/weibo/a/a;->h:I

    iput-object v1, p0, Lcom/tencent/weibo/a/a;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/a/a;->j:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weibo/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/weibo/a/a;->h:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weibo/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/a/a;->i:Ljava/lang/String;

    return-void
.end method
