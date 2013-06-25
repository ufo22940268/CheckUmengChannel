.class public Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;
.super Ljava/lang/Object;
.source "RemotePhotoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/utils/RemotePhotoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public defaultDrawable:I

.field private sampleHeight:I

.field private sampleWidth:I

.field public subsampled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const v0, 0x7f02026d

    iput v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;->defaultDrawable:I

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;->subsampled:Z

    return-void
.end method
