.class public final Lcom/zhangdan/app/data/model/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/data/model/a;->h:Z

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/data/model/a;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/model/a;->a:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/data/model/a;->e:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/data/model/a;->g:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/data/model/a;->i:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/a;->f:Ljava/lang/String;

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/model/a;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/model/a;->g:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/model/a;->i:I

    return v0
.end method
