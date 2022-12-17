import oxo_ui
import unittest

class TestGuiGame(unittest.TestCase):
    def testgui(self):
        rowRange = 3
        colRange = 3
        self.assertEqual(rowRange,colRange)
        
if __name__=='__main__':
    unittest.main()