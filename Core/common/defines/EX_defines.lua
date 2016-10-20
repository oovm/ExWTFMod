NDefines.NGameplay.NAVY_SIZE_MAX = 10000;                         --最大海军容量
NDefines.NGameplay.PLANET_ARMIES_LIMIT = 25;                      --星球军队容量
NDefines.NGameplay.SUBJECTS_INTEGRATION_CAP = 100;                --同时可吞并的附庸数量
NDefines.NGameplay.SUBJECT_INTEGRATION_COST_BASE = 100;           --吞并的基本花费
NDefines.NGameplay.SUBJECT_INTEGRATION_COST_PER_POP = 3;          --吞并每人口的额外花费
NDefines.NGameplay.SUBJECT_INTEGRATION_COST_PER_PLANET = 25;      --吞并每星球的额外花费
NDefines.NGameplay.BASE_SURVEY_TIME = 90.0;                       --星球调查时间
NDefines.NGameplay.LEADER_AGE_MIN = 18;                           --领袖最小年龄
NDefines.NGameplay.LEADER_AGE_MAX = 60;                           --领袖最大年龄
NDefines.NGameplay.LEADER_AGE_DEATH_CHANCE_AGE	= 30;             --开始死亡年龄
NDefines.NGameplay.LEADER_HIRING_COST = 0;                        --领袖招募花费
NDefines.NGameplay.LEADER_AGE_DEATH_CHANCE_INC = 0.001;           --每月死亡概率(期望为25年)
NDefines.NGameplay.LEADER_POOL_LEAD_TIME = 1;                     --领袖刷新时间(年)
NDefines.NGameplay.VICTORY_CONDITION_DOMINATION = 0.2;            --殖民胜利比例
NDefines.NGameplay.START_YEAR = 1066;                             --游戏开始日期
NDefines.NGameplay.NEBULA_TRAVEL_SPEED_PENALTY = 0.75; 		      --星云速率惩罚75%
NDefines.NGameplay.RESEARCH_AGREEMENT_COST_MULT = -0.50;          --科研协议降低成本
NDefines.NGameplay.MIN_TRADE_DEAL_LENGTH_YEARS = 5;               --最小贸易时长(年)
NDefines.NGameplay.MAX_TRADE_DEAL_LENGTH_YEARS = 50;              --最大贸易时长(年)
NDefines.NGameplay.TERRAFORM_DEFAULT_DURATION_DAYS = 1800;        --星球改造时长(天)
NDefines.NGameplay.DEBRIS_ANALYZED_TECH_PROGRESS = 0.02;          --残骸分析成功增加进度
NDefines.NGameplay.DEBRIS_RESEARCH_TIME = 15;                     --残骸分析时间(天)
NDefines.NGameplay.ANOMALY_RISK_DEFAULT = 50;                     --异常分析的危险程度
NDefines.NGameplay.ANOMALY_SPAWN_CHANCE = 0.10;                   --异常的出现概率
NDefines.NGameplay.ANOMALY_SPAWN_CHANCE_INCREMENT = 0.05;         --调查失败异常衍生概率		
NDefines.NGameplay.TECH_COST_MULT_NUM_COLONIES = 0.25;            --每个星球的科研惩罚
NDefines.NGameplay.TECH_COST_FREE_POPS = 25;                      --免科研惩罚的人口
NDefines.NGameplay.CORE_SECTOR_SYSTEM_CAP = 5;                    --核心星域数
NDefines.NGameplay.LEADER_SKILL_CAP = 10;                         --领袖的等级上限
NDefines.NGameplay.ADVANCED_EMPIRE_EXTRA_WARSHIPS_MIN = 10;       --高级AI额外舰队最少
NDefines.NGameplay.ADVANCED_EMPIRE_EXTRA_WARSHIPS_MAX = 50;       --高级AI额外舰队最多
NDefines.NGameplay.FEDERATION_MIN_MEMBERS_TO_FORM = 3;            --成立联邦需要成员数
NDefines.NGameplay.SECTOR_REVOKE_SYSTEM_COST = 0;                 --移出星域无消耗
NDefines.NGameplay.DELETE_SECTOR_COST = 0;                        --移除星域无消耗
NDefines.NGameplay.BORDER_BASE_RADIUS = 7.5;                      --无加成国界大小

NDefines.NSpecies.MAX_ETHIC_POINTS = 3;                           --道德点
NDefines.NSpecies.MAX_TRAIT_POINTS = 5;                           --特性点
NDefines.NSpecies.MAX_TRAITS = 6;                                 --特性数
NDefines.NSpecies.MAX_TRAIT_POINTS_LEADER = 2;                    --领袖初始技能数
NDefines.NSpecies.MAX_TRAIT_POINTS_RULER = 3;                     --统治者初始技能数
NDefines.NPop.FOOD_SURPLUS_EXTRA_GROWTH = 0.50;                   --每点食物加速增长
NDefines.NPop.GROWTH_BASE = 50;	                                  --人口增长基础时间
NDefines.NCombat.DAMAGE_REDUCTION = 100;                          --护甲的底 armor / ( armor + DAMAGE_REDUCTION )
NDefines.NEconomy.START_ENERGY = 0;                               --初始能量点
NDefines.NEconomy.START_MINERALS = 1000;                          --初始矿物点
NDefines.NEconomy.FLEET_UPGRADE_TIME_COST_MULT = 0.05;            --舰队快速升级
NDefines.NShip.ENERGY_MAINTENANCE_MUL = 0.01;                     --维护能量倍数
NDefines.NShip.MINERAL_MAINTENANCE_MUL = 0;                       --不需要矿物维护
NDefines.NShip.DESIGNER_WEAPON_STACKING_DIV = 1.0;                --武器多样化指数
--战斗力公式 P=S(H*D)^E
NDefines.NShip.MILITARY_POWER_SCALE = 1.0;
NDefines.NShip.MILITARY_POWER_EXPONENT = 0.5;

--AI扩张与结盟
NDefines.NAI.ALLIANCE_ACCEPTANCE_MEMBER_VOTE_SIZE_FACTOR = 0;   --多国结盟惩罚(无)
NDefines.NAI.ALLIANCE_ACCEPTANCE_RELATIVE_STRENGTH_MAX = 100;   --国家实力对结盟加分影响的上限(非常大)
NDefines.NAI.ALLIANCE_ACCEPTANCE_VOTED_DOWN_PROPOSAL = 0;       --AI提议被拒绝不降低对联盟的评估
NDefines.NAI.ALLIANCE_ACCEPTANCE_SHARED_RIVAL = 50;             --邀请人共同对手加分
NDefines.NAI.ALLIANCE_ACCEPTANCE_SHARED_RIVAL_IN_ALLIANCE = 15; --联盟成员共同对手加分
NDefines.NAI.COLONIZER_SHIPS_MAX = 3;                           --AI能同时拥有三艘殖民船
NDefines.NAI.ARSENAL_FLEET_SIZE = 600;                          --AI舰队规模标准

--超过2300(原版)距离不显示舰队标记
NDefines.NCamera.GALAXY_SHOW_FLEETS_ZOOM = 1500;
--银河地图缩放级数
NDefines.NCamera.ZOOM_STEPS_GALAXY = { 100, 200, 400, 600, 900, 1500, 2250 , 3000 };
--关闭星尘旋转
NDefines.NGraphics.GALAXY_NEBULA_DUST_ROTATION_SPEED = 0.000;
NDefines.NGraphics.GALAXY_DUST_ROTATION_SPEED		 = 0.000;
--星云的字体大小
NDefines.NGraphics.MAPNAME_NEBULA_SCALE = 3.0;
--2D星图
NDefines.NGraphics.RANDOM_HEIGHT_MIN = 0;
NDefines.NGraphics.RANDOM_HEIGHT_MAX = 0;
--舰队随机高度
NDefines.NGraphics.SHIP_RANDOM_HEIGHT_OFFSET = 50;