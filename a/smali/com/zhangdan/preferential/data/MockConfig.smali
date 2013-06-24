.class public Lcom/zhangdan/preferential/data/MockConfig;
.super Ljava/lang/Object;
.source "MockConfig.java"


# static fields
.field public static final MOCK_HIDE_IMAGE:Z

.field public static MOCK_LAT:D

.field public static MOCK_LNG:D

.field public static final MOCK_POSITION:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-wide v0, 0x40438b615ebfa8f8L

    sput-wide v0, Lcom/zhangdan/preferential/data/MockConfig;->MOCK_LAT:D

    .line 23
    const-wide v0, 0x405d4dc58ab92c06L

    sput-wide v0, Lcom/zhangdan/preferential/data/MockConfig;->MOCK_LNG:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
