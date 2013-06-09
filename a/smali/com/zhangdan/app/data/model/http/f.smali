.class public final Lcom/zhangdan/app/data/model/http/f;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/zhangdan/app/data/model/http/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/zhangdan/app/data/model/http/g;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/f;->f:Lcom/zhangdan/app/data/model/http/g;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/data/model/http/f;->b:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/f;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/f;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/f;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/b/e;->b(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/data/model/http/f;->f:Lcom/zhangdan/app/data/model/http/g;

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/data/model/http/f;->d:I

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/f;->a:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/data/model/http/f;->e:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/model/http/f;->b:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/model/http/f;->d:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/model/http/f;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BankService [auto_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/zhangdan/app/data/model/http/f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bank_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
