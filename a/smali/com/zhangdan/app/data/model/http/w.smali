.class public final Lcom/zhangdan/app/data/model/http/w;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/w;->a:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/data/model/http/w;->c:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/w;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/w;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/model/http/w;->c:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/w;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/w;->d:Ljava/lang/String;

    return-object v0
.end method
