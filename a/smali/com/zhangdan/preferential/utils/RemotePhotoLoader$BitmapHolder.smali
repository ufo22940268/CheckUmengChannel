.class Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;
.super Ljava/lang/Object;
.source "RemotePhotoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/utils/RemotePhotoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapHolder"
.end annotation


# static fields
.field public static final BROKEN:I = 0x3

.field public static final LOADED:I = 0x2

.field public static final LOADING:I = 0x1

.field public static final NEEDED:I


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field private state:I

.field final synthetic this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;Lcom/zhangdan/preferential/utils/RemotePhotoLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;-><init>(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 374
    iget v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I

    return v0
.end method

.method static synthetic access$102(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    iput p1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I

    return p1
.end method
