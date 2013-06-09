.class public final Lcom/zhangdan/app/data/model/http/s;
.super Lcom/zhangdan/app/data/model/http/k;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/data/model/http/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/s;->b:Ljava/util/List;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/s;->a:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/s;->b:Ljava/util/List;

    return-object v0
.end method
