.class public final Lcom/tencent/weibo/d/a;
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

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/weibo/a/a;-><init>()V

    const-string v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->m:Ljava/lang/String;

    const-string v0, "code"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->n:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/d/a;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/d/a;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/d/a;->r:Ljava/lang/String;

    const-string v0, "authorization_code"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/d/a;->t:Ljava/lang/String;

    const-string v0, "2.a"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/weibo/a/a;-><init>()V

    const-string v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->m:Ljava/lang/String;

    const-string v0, "code"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->n:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/d/a;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/d/a;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/d/a;->r:Ljava/lang/String;

    const-string v0, "authorization_code"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/d/a;->t:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/weibo/d/a;->k:Ljava/lang/String;

    const-string v0, "2.a"

    iput-object v0, p0, Lcom/tencent/weibo/d/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_id"

    iget-object v3, p0, Lcom/tencent/weibo/d/a;->l:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "response_type"

    iget-object v3, p0, Lcom/tencent/weibo/d/a;->n:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcom/tencent/weibo/d/a;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weibo/d/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/d/a;->l:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/d/a;->m:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/d/a;->n:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/d/a;->q:Ljava/lang/String;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/d/a;->r:Ljava/lang/String;

    return-void
.end method
