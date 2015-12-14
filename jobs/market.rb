TRAIN_PASSENGERS = [124565, 984617,345698, 789321, 1234563,576065]
CAR_PASSENGERS = [369438, 890000, 453782, 934827, 1259364,100295]
BUS_PASSENGERS = [567491, 1432965, 531764, 854721, 980281, 79980]

morning = 0
mid_morning = 1
midday = 2
early_afternoon = 3
afternoon_evening = 4
late_night = 5

MORNING_MOVING_POPULATION = TRAIN_PASSENGERS[morning] + BUS_PASSENGERS[morning] + CAR_PASSENGERS[morning]
MORNING_TRAIN_PERCENTAGE = TRAIN_PASSENGERS[morning].to_f / MORNING_MOVING_POPULATION.to_f * 100
MORNING_BUS_PERCENTAGE = BUS_PASSENGERS[morning].to_f / MORNING_MOVING_POPULATION.to_f * 100
MORNING_CAR_PERCENTAGE = CAR_PASSENGERS[morning].to_f / MORNING_MOVING_POPULATION.to_f * 100

MID_MORNING_MOVING_POPULATION = TRAIN_PASSENGERS[mid_morning] + BUS_PASSENGERS[mid_morning] + CAR_PASSENGERS[mid_morning]
MID_MORNING_TRAIN_PERCENTAGE = TRAIN_PASSENGERS[mid_morning].to_f / MID_MORNING_MOVING_POPULATION.to_f * 100
MID_MORNING_BUS_PERCENTAGE = BUS_PASSENGERS[mid_morning].to_f / MID_MORNING_MOVING_POPULATION.to_f * 100
MID_MORNING_CAR_PERCENTAGE = CAR_PASSENGERS[mid_morning].to_f / MID_MORNING_MOVING_POPULATION.to_f * 100

MIDDAY_MOVING_POPULATION = TRAIN_PASSENGERS[midday] + BUS_PASSENGERS[midday] + CAR_PASSENGERS[midday]
MIDDAY_TRAIN_PERCENTAGE = TRAIN_PASSENGERS[midday].to_f / MIDDAY_MOVING_POPULATION.to_f * 100
MIDDAY_BUS_PERCENTAGE = BUS_PASSENGERS[midday].to_f / MIDDAY_MOVING_POPULATION.to_f * 100
MIDDAY_CAR_PERCENTAGE = CAR_PASSENGERS[midday].to_f / MIDDAY_MOVING_POPULATION.to_f * 100

EARLYAFT_MOVING_POPULATION = TRAIN_PASSENGERS[early_afternoon] + BUS_PASSENGERS[early_afternoon] + CAR_PASSENGERS[early_afternoon]
EARLYAFT_TRAIN_PERCENTAGE = TRAIN_PASSENGERS[early_afternoon].to_f / EARLYAFT_MOVING_POPULATION.to_f * 100
EARLYAFT_BUS_PERCENTAGE = BUS_PASSENGERS[early_afternoon].to_f / EARLYAFT_MOVING_POPULATION.to_f * 100
EARLYAFT_CAR_PERCENTAGE = CAR_PASSENGERS[early_afternoon].to_f / EARLYAFT_MOVING_POPULATION.to_f * 100

AFT_MOVING_POPULATION = TRAIN_PASSENGERS[afternoon_evening] + BUS_PASSENGERS[afternoon_evening] + CAR_PASSENGERS[afternoon_evening]
AFT_TRAIN_PERCENTAGE = TRAIN_PASSENGERS[afternoon_evening].to_f / AFT_MOVING_POPULATION.to_f * 100
AFT_BUS_PERCENTAGE = BUS_PASSENGERS[afternoon_evening].to_f / AFT_MOVING_POPULATION.to_f * 100
AFT_CAR_PERCENTAGE = CAR_PASSENGERS[afternoon_evening].to_f / AFT_MOVING_POPULATION.to_f * 100

NIGHT_MOVING_POPULATION = TRAIN_PASSENGERS[late_night] + BUS_PASSENGERS[late_night] + CAR_PASSENGERS[late_night]
NIGHT_TRAIN_PERCENTAGE = TRAIN_PASSENGERS[late_night].to_f / NIGHT_MOVING_POPULATION.to_f * 100
NIGHT_BUS_PERCENTAGE = BUS_PASSENGERS[late_night].to_f / NIGHT_MOVING_POPULATION.to_f * 100
NIGHT_CAR_PERCENTAGE = CAR_PASSENGERS[late_night].to_f / NIGHT_MOVING_POPULATION.to_f * 100




data = [early_morning_data = [
  { label: "Earlybird Bus", value: MORNING_BUS_PERCENTAGE},
  { label: "Earlybird Train", value: MORNING_TRAIN_PERCENTAGE},
  { label: "Eearlybird Drivers", value: MORNING_CAR_PERCENTAGE },
],
mid_morning_data = [
  { label: "Morning Bus", value: MID_MORNING_BUS_PERCENTAGE},
  { label: "Morning Train", value: MID_MORNING_TRAIN_PERCENTAGE},
  { label: "Morning Drivers", value: MID_MORNING_CAR_PERCENTAGE },
],
midday_data = [
  { label: "Midday Bus", value: MIDDAY_BUS_PERCENTAGE},
  { label: "Midday Train", value: MIDDAY_TRAIN_PERCENTAGE},
  { label: "Midday Drivers", value: MIDDAY_CAR_PERCENTAGE },
],
early_afternoon_data = [
  { label: "Afternoon Bus", value: EARLYAFT_BUS_PERCENTAGE},
  { label: "Afternoon Train", value: EARLYAFT_TRAIN_PERCENTAGE},
  { label: "Afternoon Drivers", value: EARLYAFT_CAR_PERCENTAGE },
],
afternoon_evening_data = [
  { label: "Evening Bus", value: AFT_BUS_PERCENTAGE},
  { label: "Evening Train", value: AFT_TRAIN_PERCENTAGE},
  { label: "Evening Drivers", value: AFT_CAR_PERCENTAGE },
],
late_night_data = [
  { label: "Night Bus", value: NIGHT_BUS_PERCENTAGE},
  { label: "Night Train", value: NIGHT_TRAIN_PERCENTAGE},
  { label: "Night Drivers", value: NIGHT_CAR_PERCENTAGE }
]]

# send_event 'moves_frequency', { value: data }

SCHEDULER.every '20s' do
  send_event 'moves_frequency', { value: data.sample}
end

