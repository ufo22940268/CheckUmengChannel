.class public final Lcom/zhangdan/app/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final a:[J


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/hardware/SensorManager;

.field private d:Landroid/hardware/Sensor;

.field private e:Lcom/zhangdan/app/g/a;

.field private f:Landroid/os/Vibrator;

.field private g:Landroid/app/KeyguardManager;

.field private h:F

.field private i:F

.field private j:F

.field private k:J

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zhangdan/app/g/b;->a:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/g/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->b:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/zhangdan/app/g/b;->c:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/g/b;->d:Landroid/hardware/Sensor;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/g/b;->b:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/zhangdan/app/g/b;->f:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->b:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/zhangdan/app/g/b;->g:Landroid/app/KeyguardManager;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/zhangdan/app/g/b;->d:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/zhangdan/app/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/g/b;->e:Lcom/zhangdan/app/g/a;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/g/b;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/zhangdan/app/g/b;->d:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/zhangdan/app/g/b;->c:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/zhangdan/app/g/b;->f:Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/zhangdan/app/g/b;->g:Landroid/app/KeyguardManager;

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/zhangdan/app/g/b;->k:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x64

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide v1, p0, Lcom/zhangdan/app/g/b;->k:J

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v2, v2, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget v6, p0, Lcom/zhangdan/app/g/b;->h:F

    sub-float v6, v1, v6

    iget v7, p0, Lcom/zhangdan/app/g/b;->i:F

    sub-float v7, v2, v7

    iget v8, p0, Lcom/zhangdan/app/g/b;->j:F

    sub-float v8, v5, v8

    iput v1, p0, Lcom/zhangdan/app/g/b;->h:F

    iput v2, p0, Lcom/zhangdan/app/g/b;->i:F

    iput v5, p0, Lcom/zhangdan/app/g/b;->j:F

    mul-float v1, v6, v6

    mul-float v2, v7, v7

    add-float/2addr v1, v2

    mul-float v2, v8, v8

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide v3, 0x40c3880000000000L

    mul-double/2addr v1, v3

    iget-object v3, p0, Lcom/zhangdan/app/g/b;->g:Landroid/app/KeyguardManager;

    if-nez v3, :cond_2

    :goto_1
    if-nez v0, :cond_0

    const-wide v3, 0x40a7700000000000L

    cmpl-double v0, v1, v3

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/g/b;->e:Lcom/zhangdan/app/g/a;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zhangdan/app/g/b;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lcom/zhangdan/app/g/b;->l:J

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/g/b;->f:Landroid/os/Vibrator;

    sget-object v1, Lcom/zhangdan/app/g/b;->a:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/zhangdan/app/g/b;->e:Lcom/zhangdan/app/g/a;

    invoke-interface {v0}, Lcom/zhangdan/app/g/a;->j()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/g/b;->g:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/zhangdan/app/g/b;->f:Landroid/os/Vibrator;

    sget-object v1, Lcom/zhangdan/app/g/b;->a:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method
