.class public final Lcom/zhangdan/app/data/model/http/ab;
.super Lcom/zhangdan/app/data/model/http/k;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/data/model/http/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/ab;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/ab;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/ab;->b:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/ab;->b:Ljava/lang/String;

    return-object v0
.end method
