.class public Lcom/zhangdan/preferential/data/TypeConstants;
.super Ljava/lang/Object;
.source "TypeConstants.java"


# static fields
.field public static final ALL:I = 0x1

.field public static final BEAUTY:I = 0x32

.field public static final ENTERTAINMENT:I = 0x1e

.field public static final FOOD:I = 0xa

.field public static final FRIDAY:I = -0x5

.field public static final HOTEL:I = 0x3c

.field public static final MONDAY:I = -0x1

.field public static final SATURDAY:I = -0x6

.field public static final SHOPPING:I = 0x14

.field public static final SUNDAY:I = -0x7

.field public static final THURSDAY:I = -0x4

.field public static final TODAY:I = -0x8

.field public static final TUESDAY:I = -0x2

.field public static final WEDNESDAY:I = -0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWeekType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 31
    const/4 v0, -0x1

    if-gt p0, v0, :cond_0

    const/4 v0, -0x8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toTypeConstants(I)I
    .locals 2
    .parameter "date"

    .prologue
    .line 23
    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 24
    neg-int v0, p0

    return v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Server date out of range!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
