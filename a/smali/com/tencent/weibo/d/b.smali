.class public final Lcom/tencent/weibo/d/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/tencent/weibo/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OAuthV2Client.class"

    sput-object v0, Lcom/tencent/weibo/d/b;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/weibo/e/a;

    invoke-direct {v0}, Lcom/tencent/weibo/e/a;-><init>()V

    sput-object v0, Lcom/tencent/weibo/d/b;->b:Lcom/tencent/weibo/e/a;

    return-void
.end method

.method public static a(Lcom/tencent/weibo/d/a;)Ljava/lang/String;
    .locals 4

    const-string v0, "token"

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/d/a;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/weibo/d/a;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/weibo/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authorization queryString = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://open.t.qq.com/cgi-bin/oauth2/authorize?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/weibo/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url with queryString = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    const/16 v3, 0x26

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/weibo/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/weibo/d/a;)Z
    .locals 8

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v6}, Lcom/tencent/weibo/d/a;->a(I)V

    invoke-static {p0}, Lcom/tencent/weibo/e/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/tencent/weibo/d/a;->c(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/weibo/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parseToken response=>> tokenArray.length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    aget-object v3, v2, v0

    aget-object v4, v2, v1

    aget-object v5, v2, v7

    aget-object v2, v2, v6

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    if-lt v6, v7, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lcom/tencent/weibo/d/a;->g(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lt v4, v7, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lcom/tencent/weibo/d/a;->h(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lt v4, v7, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lcom/tencent/weibo/d/a;->a(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lt v3, v7, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/tencent/weibo/d/a;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/weibo/d/a;->a(I)V

    move v0, v1

    goto :goto_0
.end method
