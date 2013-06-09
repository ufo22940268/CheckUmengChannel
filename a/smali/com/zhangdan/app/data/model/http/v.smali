.class public final Lcom/zhangdan/app/data/model/http/v;
.super Lcom/zhangdan/app/data/model/http/k;


# instance fields
.field private a:J

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/data/model/http/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/v;->b:D

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/v;->a:J

    return-void
.end method

.method public final c()D
    .locals 2

    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/v;->b:D

    return-wide v0
.end method
