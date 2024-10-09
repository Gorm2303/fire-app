class PresettingService {
  static final Map<String, Map<String, String>> _presettings = {
    'None': {
      'principal': '0',
      'interestRate': '0',
      'duration': '0',
      'additionalAmount': '0',
      'breakPeriod': '0',
    },
    'Medium Investment': {
      'principal': '5000',
      'interestRate': '7',
      'duration': '25',
      'additionalAmount': '5000',
      'breakPeriod': '0',
    },
    'Long Light Investment': {
      'principal': '2000',
      'interestRate': '7',
      'duration': '40',
      'additionalAmount': '2000',
      'breakPeriod': '0',
    }, 
    'High Investment': {
      'principal': '10000',
      'interestRate': '7',
      'duration': '25',
      'additionalAmount': '10000',
      'breakPeriod': '0',
    },
    'Slightly Extreme Investment': {
      'principal': '15000',
      'interestRate': '7',
      'duration': '25',
      'additionalAmount': '15000',
      'breakPeriod': '0',
    },
    'Extreme Investment': {
      'principal': '20000',
      'interestRate': '7',
      'duration': '20',
      'additionalAmount': '20000',
      'breakPeriod': '0',
    },
    'High Investment with Break': {
      'principal': '10000',
      'interestRate': '7',
      'duration': '20',
      'additionalAmount': '10000',
      'breakPeriod': '10',
    },
    'Long Medium Investment': {
      'principal': '5000',
      'interestRate': '7',
      'duration': '40',
      'additionalAmount': '5000',
      'breakPeriod': '0',
    },
    'Aktiesparekonto': {
      'principal': '10000',
      'interestRate': '7',
      'duration': '1',
      'additionalAmount': '10000',
      'breakPeriod': '24',
      'taxOption': 'Aktiesparekonto',
    },
    'Child Savings': {
      'principal': '5000',
      'interestRate': '7',
      'duration': '21',
      'additionalAmount': '100',
      'breakPeriod': '0',
    },
    'Pension': {
      'principal': '2000',
      'interestRate': '7',
      'duration': '40',
      'additionalAmount': '2000',
      'breakPeriod': '0',
    },
    'Child Pension Savings': {
      'principal': '5000',
      'interestRate': '7',
      'duration': '10',
      'additionalAmount': '1000',
      'breakPeriod': '50',
    },
  };

  // Method to get a specific preset by key
  static Map<String, String> getPreset(String key) {
    return _presettings[key] ?? _presettings['None']!;
  }

  // Method to get all preset keys (useful for dropdowns)
  static List<String> getPresetKeys() {
    return _presettings.keys.toList();
  }
}
