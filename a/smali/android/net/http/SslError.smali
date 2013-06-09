.class public Landroid/net/http/SslError;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Landroid/net/http/SslCertificate;


# direct methods
.method private a()I
    .locals 3

    iget v0, p0, Landroid/net/http/SslError;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    if-gez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroid/net/http/SslError;->a:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "primary error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/net/http/SslError;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/SslError;->b:Landroid/net/http/SslCertificate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
