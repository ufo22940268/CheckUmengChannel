.class public final Lcom/zhangdan/preferential/data/model/j;
.super Lcom/zhangdan/preferential/data/model/i;


# instance fields
.field public p:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/j;->p:Ljava/util/List;

    return-void
.end method
